package com.claim.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.claim.entity.Company;
import com.claim.entity.Person;
import com.claim.entity.PersonCompany;
import com.claim.repository.CompanyRepository;
import com.claim.repository.PersonRepository;

@Component
public class PersonCompanyValidator implements Validator {
	@Autowired
	PersonRepository personrep;

	@Autowired
	CompanyRepository companyrep;

	public boolean supports(Class<?> arg0) {

		return PersonCompany.class.equals(arg0);
	}

	public void validate(Object obj, Errors er) {
		System.out.println("*********validate Methode*********");
		PersonCompany personCompany = (PersonCompany) obj;
		Person p = personrep.findOne(personCompany.getEmail());
		Company com=companyrep.findByCompanyEmail(personCompany.getCompanyEmail());
		if(p!=null){
		if (personCompany.getEmail().equals(p.getEmail())) {
			er.rejectValue("email", null, "Email address Already Registered !Please use Another Email");
		}
		if(personCompany.getCompanyEmail().equals(com.getCompanyEmail()))
		{
			er.rejectValue("companyEmail", null, "Company Email address Already Regitered !Please use Another Email");
		}
		
		}
	}

}
