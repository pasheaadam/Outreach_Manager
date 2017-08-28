package com.claim.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaSystemException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.claim.entity.Company;
import com.claim.entity.Members;
import com.claim.entity.Person;
import com.claim.entity.Task;
import com.claim.entity.Team;
import com.claim.repository.PersonRepository;
import com.claim.repository.TaskRepository;
import com.claim.service.MemberService;
import com.claim.service.TaskService;
import com.claim.service.TeamService;

@Controller
@SessionAttributes({"tasks","members","teams"})
public class OutReachController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	TaskService taskService;
	@Autowired
	TeamService teamService;
	
	@RequestMapping(value = "/outreach", method = RequestMethod.GET)
	public ModelAndView outreach(Model model, @SessionAttribute("loggedInUser") Person p,HttpSession session) {
		model.addAttribute("addMember", new Members());
		model.addAttribute("addTeam", new Team());
		return new ModelAndView("outreach", "activetask", new Task());
	}

	@ModelAttribute
	private void modelAttributes(@SessionAttribute("loggedInUser")Person loginPerson,Model model) {
		
		Company com=loginPerson.getCompanyId();
		System.out.println("******modelAttributes*******"+com);
		List<Members> members=memberService.getAllMemberByCompanyName(loginPerson.getCompanyId().getCompanyName());
		List<Team> teams=teamService.getTeamsOfCurrentCompany(loginPerson.getCompanyId().getCompanyName());
		Collection<Task> col=com.getTask();
		model.addAttribute("tasks",col);
		model.addAttribute("members", members);
		model.addAttribute("teams", teams);
		
		System.out.println("***********After all model Attributes*******");
		
	}
	
	@RequestMapping(value = "/tasksubmit", method = RequestMethod.POST)
	public String addtask(Model model, @ModelAttribute("activetask") Task activetask, HttpSession session,@SessionAttribute("loggedInUser")Person loginPerson) {
		System.out.println("*****TaskSubmit called*********");
		activetask.setCompany(loginPerson.getCompanyId());
		taskService.save(activetask);
		List<Task> li=(List<Task>)session.getAttribute("tasks");
		li.add(activetask);
		return "redirect:outreach";
	}
	
	@RequestMapping(value="/addmember",method=RequestMethod.POST)
	public String addMember(Model model,@ModelAttribute("addmember")Members member,HttpSession session,@SessionAttribute("loggedInUser")Person loginPerson)
	{
		System.out.println("******Add Member called********");
		member.setTeamCompany(loginPerson.getCompanyId().getCompanyName());
		member.setPerson(loginPerson);
		memberService.save(member);
		List<Members> li=(List<Members>)session.getAttribute("members");
		li.add(member);
		return "redirect:outreach";
	}

	@RequestMapping(value="/addteam",method=RequestMethod.POST)
	public String addteam(Model model,@ModelAttribute("addteam")Team team,HttpSession session,@SessionAttribute("loggedInUser")Person loginPerson)
	{
		System.out.println("******Add Team called********");
		team.setCompanyName(loginPerson.getCompanyId().getCompanyName());
		team.setPerson(loginPerson);
		teamService.save(team);
		model.addAttribute("addmember",new Members());
		List<Team> li=(List<Team>)session.getAttribute("teams");
		System.out.println(li);
		li.add(team);
		return "redirect:outreach";
	}
	
	@RequestMapping(value="/addmembertoteam",method=RequestMethod.POST)
	public String addMemberToTeam(Model model,@RequestParam(value="members",required=false) Integer selMems[],@RequestParam(value="task",required=false)Integer taskId,@SessionAttribute("loggedInUser")Person person,HttpSession session,RedirectAttributes attributes){
		System.out.println("*******Add Member To Team Called *********** :");
		try{
		if(selMems!=null||taskId!=null){
			
		final StringBuffer msg=new StringBuffer();
		Team team=new Team();
		Task task=getTaskFromId(taskId, session);
		team.setCompanyName(person.getCompanyId().getCompanyName());
		team.setDonorTask(task.getDonorTask());
		team.setDonorType(task.getDonorType());
		team.setFundraiser(task.getFundraiser());
		team.setPerson(person);
		team.setMember(getMemberList(session,selMems));
		team.setTask(task);
		teamService.save(team);
		attributes.addFlashAttribute("message",msg);
		}
		else{
			attributes.addFlashAttribute("addmsg", "Missing something !please Try Again");
		}
		}
		catch (JpaSystemException e) {
			attributes.addFlashAttribute("addmsg", "member already in this team");
		}
		return "redirect:outreach";
	}
	
	private List<Members> getMemberList(HttpSession session,Integer...ids)
	{
		Object obj=session.getAttribute("members");
		List<Members> result=new ArrayList<>();
		List<Members> mem=(List<Members>)obj;
			for(Integer in:ids)
			{
				result.add(mem.stream().filter(memb->memb.getMemberId()==in).collect(Collectors.toList()).get(0));
			}
			
		return result;
	}
	private Task getTaskFromId(int id,HttpSession session)
	{
		List<Task> tas=(List<Task>)session.getAttribute("tasks");
		return tas.stream().filter(task->task.getTaskId()==id).collect(Collectors.toList()).get(0);
	}
	
	@RequestMapping(value="delete",method=RequestMethod.POST)
	public String deleteMembers(@RequestParam(value="members",required=false)Integer members[],@SessionAttribute("loggedInUser")Person person,RedirectAttributes attribute)
	{
		System.out.println("****************deletemembers****************");
		try{
		if(members!=null){
		List<Integer> mem=Arrays.asList(members);
		mem.forEach(me->memberService.deleteMemberByidAndAdmin(me,person.getEmail()));
	}
		}
		catch (Exception e) {
			attribute.addAttribute("deleteMsg","You are not authorise to delete it");
		}
		return "redirect:outreach";
	}
}
