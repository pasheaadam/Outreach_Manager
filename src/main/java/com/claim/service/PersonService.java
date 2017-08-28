package com.claim.service;

import javax.persistence.EntityManager;

import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Person;
import com.claim.repository.PersonRepository;



@Service
public class PersonService {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Autowired
	private PersonRepository personRepository;
	private static final String loginSql="select P.* from person P where P.email =:email and P.password =:password";
	
	@Transactional
	public Person login(String email, String password){
		return (Person) entityManager.createNativeQuery(loginSql,Person.class)
				.setParameter("email", email)
				.setParameter("password", password)
				.getSingleResult();
	
	}
	
	@Transactional
	public Person login2(String email, String password){
		return this.personRepository.login(email, password);
	}
	
	
	
	@Transactional
	public void save(Person user) {
		this.personRepository.save(user);
	}	
	
	@Transactional
	public void save2(Person user) {
		this.entityManager.persist(user);
		
	}
}