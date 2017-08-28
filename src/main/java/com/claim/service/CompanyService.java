package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.Company;
import com.claim.repository.CompanyRepository;

@Service
public class CompanyService {

	@Autowired
	private CompanyRepository companyRepository;

	@Transactional
	public void save(Company membercompany) {
		this.companyRepository.save(membercompany);
	}
}