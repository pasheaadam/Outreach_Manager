package com.claim.validation;


import org.hibernate.validator.constraints.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.claim.entity.Person;
import com.claim.repository.PersonRepository;

@Component
public class PersonValidator implements Validator {
	@Autowired
	PersonRepository personRepository;
	
	public boolean supports(Class<?> arg0) {
		
		return Person.class.equals(arg0);
	}

	public void validate(Object obj, Errors er) {
		System.out.println("*********Validate called*********");
		Person person=(Person)obj;
		Person p=personRepository.findOne(person.getEmail());
		if(p!=null&&p.getEmail().equals(person.getEmail()))
		er.rejectValue("email", null, "Email address Already available !Please use Another Email");
		
	}
	static{
		System.out.println("================PersonValidator====================");
	}

}
