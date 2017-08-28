package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.Company;
import com.claim.entity.Person;
import com.claim.entity.Task;
import com.claim.entity.Team;
import com.claim.repository.TeamRepository;

@Service
public class TeamService {

@Autowired
TeamRepository teamRepo;

@Transactional
public void save(Team team)
{
	teamRepo.save(team);
}

public List<Team> getTeamsOfCurrentCompany(String person_company)
{
	
	return teamRepo.findByCompanyName(person_company);
}

public boolean isExistByNameandEmail(String fname,String lname,Person person)
{
	List<Team> t=teamRepo.findByMemberFirstNameAndMemberLastNameAndPerson(fname, lname, person);
	if(t.size()==0)
	return true;
	else
		return false;
}
}
