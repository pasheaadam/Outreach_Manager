package com.claim.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;


import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity  
@Table(name="members")
@Data

public class Members {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="member_id")
	private int memberId;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="team_company")
	private String teamCompany;
	
	@Column(name="member_email")
	private String memberEmail;
	
	@Column(name="member_phone")
	private String memberPhone;
		
	@Column(name="donor_status")
	private String donorStatus;
	
	@Column(name="donor_type")
	private String donor_Type;
	
	@Column(name="donor_available")
	private String donor_available;
	
	@Column(name="donor_task") 
	private String donorTask;
	
	@OneToOne
	@JoinColumn(name="Admin", insertable=true, updatable=true)
	private Person person;
	
	@ManyToMany(mappedBy="member")
	private List<Team> teams; //one member can include in many teams

	
	public List<Team> getTeams() {
		return teams;
	}

	public void setTeams(List<Team> teams) {
		this.teams = teams;
	}

	public Members(){}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public String getDonorTask() {
		return donorTask;
	}

	public void setDonorTask(String donorTask) {
		this.donorTask = donorTask;
	}


	

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTeamCompany() {
		return teamCompany;
	}

	public void setTeamCompany(String teamCompany) {
		this.teamCompany = teamCompany;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getDonorStatus() {
		return donorStatus;
	}

	public void setDonorStatus(String donorStatus) {
		this.donorStatus = donorStatus;
	}

	public String getDonor_Type() {
		return donor_Type;
	}

	public void setDonor_Type(String donor_Type) {
		this.donor_Type = donor_Type;
	}

	public String getDonor_available() {
		return donor_available;
	}

	public void setDonor_available(String donor_available) {
		this.donor_available = donor_available;
	}


	
	
	
	
	
	
	
	
	
}
