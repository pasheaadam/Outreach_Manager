package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.claim.entity.Members;
import com.claim.repository.MemberRepository;

@Service
public class MemberService {

@Autowired
private MemberRepository memberrepo;

@Transactional
public void save(Members member)
{
	memberrepo.save(member);
}

@Transactional
public List<Members> getAllMemberByCompanyName(String company_email)
{
	
	return memberrepo.findByTeamCompany(company_email);
}

@Transactional
public Members getMemberById(Integer id)
{
	return memberrepo.findByMemberId(id);
}
	
@Transactional
public void deleteMemberByidAndAdmin(int id,String adminEmail)
{
	memberrepo.deleteByMemberId(id,adminEmail);
}
}
