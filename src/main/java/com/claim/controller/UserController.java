package com.claim.controller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringBufferInputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionSystemException;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.claim.entity.Company;
import com.claim.entity.Person;
import com.claim.entity.PersonCompany;
import com.claim.entity.Post;
import com.claim.entity.Task;
import com.claim.service.CompanyService;
import com.claim.service.PersonService;
import com.claim.service.PostService;
import com.claim.service.SendMail;
import com.claim.service.TaskService;
import com.claim.validation.PersonCompanyValidator;

@Controller
@SessionAttributes({"posts"})
public class UserController {
	private final String BASE_Path = "src/main/webapp/images/";
	// @Autowired
	// private PersonValidator personValidator;
	
	@Autowired
	private PersonCompanyValidator personCompanyValidator;
	@Autowired
	private PersonService personService;

	@Autowired
	private PostService postService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private TaskService taskService;

	@RequestMapping("/") // the root of your website is the index page public
							// String index()
	public String index() {
		return "index";
	}

	@Autowired
	private SendMail sendEmail;
	private final static String message = "Claim Social Network";
	private final static String subject = "Thank you for registering";
	@Autowired
	private PersonService personService1;

	@ModelAttribute
	private void modelAttribute(@SessionAttribute(name="loggedInUser",required=false)Person person,Model model)
	{
		System.out.println("******modelAttribute in UserController*****"+person);
		if(person!=null)
		model.addAttribute("posts", postService.findMyPost(person.getEmail()));
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		System.out.println("*****Login called******");
		model.addAttribute("userLogin", new Person());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String handlelogin(Model model, @ModelAttribute("userLogin") Person loginPerson, HttpSession session) {
		try{
			Person p = this.personService.login(loginPerson.getEmail(), loginPerson.getPassword());
			
			if(p == null){
			model.addAttribute("loginError", "Hmm. We don’t recognize that user name or password. Please try again");
			loginPerson.setPassword("");
			return "login";
			
			}else{
				session.setAttribute("loggedInUser",p);
				return "redirect:home";
			}
			}
			catch (NoResultException e) {
				loginPerson.setPassword("");
				model.addAttribute("loginError", "Hmm. We don’t recognize that user name or password. Please try again");
				return "login";
			}
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView register(Model model) {
		return new ModelAndView("signup", "user", new PersonCompany());
	}
	

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String handleSignup(Model model, @ModelAttribute("user")PersonCompany user,BindingResult error) {
		String result="signup";
		try{
		Company membercompany = setCompanyDetails(user);
		Person person = setPersonDetails(user, membercompany);
		personCompanyValidator.validate(user, error);
		if(!error.hasErrors()){
		companyService.save(membercompany);
		personService.save(person);
		person.setPassword("");
//		sendEmail.sendMail(user.getEmail(), message, subject);
		addcompany(model, membercompany);
		result="redirect:login";
		}
		}
		catch (Exception e) {
			System.out.println("************exception********"+e);
			e.printStackTrace();
			model.addAttribute("message","Something went wrong!Please try again");
			result="signup";
		}
		return  result;
	}

	private Company setCompanyDetails(PersonCompany user) {
		Company membercompany = new Company();
		membercompany.setAddress(user.getAddress());
		membercompany.setCity(user.getCity());
		membercompany.setCompanyEmail(user.getCompanyEmail());
		membercompany.setCompanyName(user.getCompanyName());
		membercompany.setCompanySize(user.getCompanySize());
		membercompany.setContributionBudget(user.getContributionBudget());
		membercompany.setEngagementLevel(user.getEngagementLevel());
		membercompany.setLocationEmployees(user.getLocationEmployees());
		membercompany.setPhone(user.getPhone());
		membercompany.setState(user.getState());
		membercompany.setZip(user.getZip());

		return membercompany;
	}

	private Person setPersonDetails(PersonCompany user, Company addcompany) {
		Person person = new Person();
		person.setEmail(user.getEmail());
		person.setFirstName(user.getFirstName());
		person.setPassword(user.getPassword());
		person.setLastName(user.getLastName());
		person.setCompanyId(addcompany);
		return person;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
			
		return "home";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus(Model model) {

		return "aboutus";

	}

	@RequestMapping(value = "/charitablehq", method = RequestMethod.GET)
	public String charitablehq(Model model) {

		return "charitablehq";

	}

	//no need of this method
	private void addtask(Model model, Task task) {
		model.addAttribute("activetask", task);
	}

	/*---------Not Using this Method----------------------
	  
	@RequestMapping(value="/outreach", method=RequestMethod.POST)	
	public String task(@RequestParam("donor_task")String donorTask,@RequestParam("fundraiser")String fundraiser,@RequestParam("donor_type")String donorType, @RequestParam("donor_category")String donorCategory,
			           @RequestParam("task_description")String taskDescription, @RequestParam("company_partner")String companyPartner, @RequestParam("date_start")String dateStart, @RequestParam("date_end")String dateEnd, 
			           @RequestParam("dollar_goal")int dollarGoal, @RequestParam("dollar_current")int dollarCurrent, @RequestParam("volunteer_goal")int volunteerGoal, @RequestParam("volunteer_hrsgoal")int volunteerHrsgoal, 
			           @RequestParam("volunteer_current")int volunteerCurrent, @RequestParam("volunteer_hrscurrent") int volunteerHrscurrent, @RequestParam("volunteer_final") int volunteerFinal, @RequestParam("volunteer_hrsfinal")int volunteerHrsfinal,@SessionAttribute("loggedInUser") Task t){
		Task task =new Task();
		task.setDonorTask(donorTask);task.setDonorType(donorType); task.setDonorCategory(donorCategory);task.setFundraiser(fundraiser);task.setTaskDescription(taskDescription);task.setCompanyPartner(companyPartner);
		task.setDateEnd(dateEnd);task.setDollarCurrent(dollarCurrent);task.getDollarFinal();task.setDollarGoal(dollarGoal);task.setDonorCategory(donorCategory);task.setTaskDescription(taskDescription);task.setVolunteerCurrent(volunteerCurrent);
		task.setVolunteerHrsfinal(volunteerHrsfinal);task.setVolunteerHrsgoal(volunteerHrsgoal);
		taskService.save(task); 
		addtask(model, task);
		return "outreach";
	}
	*/

	@RequestMapping(value = "/socialnetwork", method = RequestMethod.GET)
	public String socialnetwork(Model model) {
		model.addAttribute("post", new Post());
		return "socialnetwork";
	}

	@RequestMapping(value = "/eboard", method = RequestMethod.GET)
	public String eboard(Model model) {

		return "eboard";
	}

	@RequestMapping(value = "/userPost", method = RequestMethod.POST)
	public String post(Model model, @RequestParam("message") String message, @RequestParam("email") String email,
			@RequestParam("picture") MultipartFile file, @SessionAttribute("loggedInUser") Person p,HttpSession session,RedirectAttributes addtribute) {
		Post post = new Post();
		post.setEmail(email);
		post.setMessage(message);
		post.setPerson(p);
		System.out.println("=================user POst==============: " + post.getEmail());
		post.setPicture(savePictureToFile(file, "upload/" + post.getEmail()));
		postService.savePost(post);
		addToPosts(session, post);
		addtribute.addFlashAttribute("post", new Post());
		return "redirect:socialnetwork";
	}
	
	private void addToPosts(HttpSession session,Post post)
	{
		List<Post> postList=(List<Post>)session.getAttribute("posts");
		postList.add(0,post);
	}
	private void addUserPost(Model model, String email) {
		model.addAttribute("post", new Post());
//		model.addAttribute("posts", postService.findMyPost(email)); //fatching everytime post from database can decrease perfomance so i saved it in session

	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uploadFileHandler(@RequestParam("file") MultipartFile file, HttpSession session, Model model) {
		Person p = (Person) session.getAttribute("loggedInUser");
		System.out.println("==============FileToUpload===================");
		savePictureToFile(file, "profile/" + p.getEmail());
		p.setProfilePic(savePictureToFile(file, "profile/" + p.getEmail()));
		p.setShareImages(savePictureToFile(file, "upload/" + p.getEmail()));
		personService.save(p);
		return "redirect:socialnetwork";

	}

	private String savePictureToFile(MultipartFile file, String saveLocation) {
		System.out.println("******************methode to save picture**********");
		String fileName = saveLocation + "/" + file.getOriginalFilename();
		try {
			if (!file.isEmpty()) {
				String uploadPath = BASE_Path + fileName;
				File fileToUpload = new File(uploadPath);
				new File(BASE_Path + saveLocation).mkdir();
				fileToUpload.createNewFile();
				FileUtils.writeByteArrayToFile(fileToUpload, file.getBytes());
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/images/" + fileName;
	}

	// Not using this method
	@RequestMapping(value = "/uploadShare", method = RequestMethod.POST)
	public String uploadPictureHandler(@RequestParam("file") MultipartFile file, HttpSession session, Model model) {
		Person p = (Person) session.getAttribute("loggedInUser");
		try {
			if (!file.isEmpty()) {
				String fileName = file.getOriginalFilename();
				String basePath = "/Users/adampashea/Documents/img";
				String uploadPath = basePath + "/" + p.getEmail() + "/" + fileName;
				String picturePath = "/img/" + p.getEmail() + "/" + fileName;
				File fileToUpload = new File(uploadPath);
				FileUtils.writeByteArrayToFile(fileToUpload, file.getBytes());
				p.setShareImages(picturePath); // This is a new database field
												// for storyboard sharing
				personService.save(p);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		this.addUserPost(model, p.getEmail());
		return "home";
	}
	// Not using this method

	@RequestMapping(value = "/companysubmit", method = RequestMethod.POST)
	public String handleCompany(Model model, @ModelAttribute("membercompany") Person user, Company membercompany,
			HttpSession session) {
		companyService.save(membercompany);
		personService.save(user);
		System.out.println("Company added: " + membercompany.getCompanyName());
		return "home";
	}

	private void addcompany(Model model, Company company) {
		model.addAttribute("membercompany", company);
	}
	
	
}
