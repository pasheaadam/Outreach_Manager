package com.claim.entity;

import java.util.Collection;
import java.util.List;

import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;

import lombok.Data;

@Entity  
@Table(name="company")
@Data

public class Company {


	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="company_id")
	private int companyId;
	
	@OneToMany(mappedBy="company",fetch=FetchType.EAGER)  //Would seem like this would be the way to do it, but can't get it to work.....//
	private Collection<Task> task; 
	
	@Column(name="company_name")
	private String companyName;

	@Column(name="address")
	private String address;

	@Column(name="city")
	private String city;

	@Column(name="state")
	private String state;
	
	@Column(name="zip")

	private String zip;

	@Column(name="phone")
	private String phone;

	@Column(name="company_email")
	private String companyEmail;

	@Column(name="company_size")
	private String companySize;
	
	@Column(name="location_employees")
	private String locationEmployees;

	@Column(name="engagement_level")
	private String engagementLevel;

	@Column(name="stewardship_profile")
	private String stewardshipProfile;
	
	@Column(name="contribution_budget")
	private int contributionBudget;

	@Column(name="industry")
	private String industry;
	
	@Column(name="department")
	private String department;
	
	@OneToMany(mappedBy="companyId")
	private List<Person> person;  //Comapny has many number of admin or person
	

	public List<Person> getPerson() {
		return person;
	}

	public void setPerson(List<Person> person) {
		this.person = person;
	}

	public Collection<Task> getTask() {
		return task;
	} 

	public void setTask(Collection<Task> task) {
		this.task = task;
	} 

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getStewardshipProfile() {
		return stewardshipProfile;
	}

	public void setStewardshipProfile(String stewardshipProfile) {
		this.stewardshipProfile = stewardshipProfile;
	}

	public int getContributionBudget() {
		return contributionBudget;
	}

	public void setContributionBudget(int contributionBudget) {
		this.contributionBudget = contributionBudget;
	}

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public String getCompanyName() {
	return companyName;
	}

	public void setCompanyName(String companyName) {
	this.companyName = companyName;
	}

	public String getAddress() {
	return address;
	}

	public void setAddress(String address) {
	this.address = address;
	}

	public String getCity() {
	return city;	
	}

	public void setCity(String city) {
	this.city = city;
	}

	public String getState() {
	return state;
	}

	public void setState(String state) {
	this.state = state;
	}

	public String getPhone() {
	return phone;
	}

	public void setPhone(String phone) {
	this.phone = phone;
	}

	public String getCompanyEmail() {
	return companyEmail;
	}

	public void setEmail(String email) {
	this.companyEmail = email;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getEngagementLevel() {
	return engagementLevel;
	}

	public void setEngagementLevel(String engagementLevel) {
	this.engagementLevel = engagementLevel;
	}

	public String getStewardship_Profile() {
	return stewardshipProfile;
	}

	public String getLocationEmployees() {
		return locationEmployees;
	}

	public void setLocationEmployees(String locationEmployees) {
		this.locationEmployees = locationEmployees;
	}
}






