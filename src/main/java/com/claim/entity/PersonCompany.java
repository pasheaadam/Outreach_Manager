package com.claim.entity;

import javax.persistence.Column;

public class PersonCompany {

	private String email;

	private String firstName;

	private String lastName;

	private String password;

	private String profilePic;

	private String shareImages;

	private String companyName;

	private String address;

	private String city;

	private String state;

	private String zip;

	private String phone;

	private String department;

	private String companyEmail;

	private String companySize;

	private String industry;

	private String locationEmployees;

	private String engagementLevel;

	private String stewardshipProfile;

	private int contributionBudget;

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfilePic() {
		return profilePic;
	}

	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}

	public String getShareImages() {
		return shareImages;
	}

	public void setShareImages(String shareImages) {
		this.shareImages = shareImages;
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

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
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

	public void setCompanyEmail(String companyEmail) {
		this.companyEmail = companyEmail;
	}

	public String getCompanySize() {
		return companySize;
	}

	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}

	public String getLocationEmployees() {
		return locationEmployees;
	}

	public void setLocationEmployees(String locationEmployees) {
		this.locationEmployees = locationEmployees;
	}

	public String getEngagementLevel() {
		return engagementLevel;
	}

	public void setEngagementLevel(String engagementLevel) {
		this.engagementLevel = engagementLevel;
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

	{
		System.out.println("======IIB of PersonCompany======");
	}
}
