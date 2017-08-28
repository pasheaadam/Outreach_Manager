package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.claim.entity.Company;

@Repository
public interface CompanyRepository extends JpaRepository<Company, String> {

	Company findByCompanyEmail(String companyEmail);
}
