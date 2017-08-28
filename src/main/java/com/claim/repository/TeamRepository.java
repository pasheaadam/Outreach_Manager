package com.claim.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.Person;
import com.claim.entity.Team;

@Repository
public interface TeamRepository extends JpaRepository<Team, String>  {

	List<Team> findByCompanyName(String company_name);
	
	List<Team> findByMemberFirstNameAndMemberLastNameAndPerson(String firstName,String lastName,Person person);
}
