package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity  
@Table(name="charity")
@Data
public class Charity {
	
	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)  //This is valid only for int and float column not for string
	@Column(name="org_id", insertable=false, updatable=false)
	private String OrgId;
	
	@Column(name="organization_name")
	private String organizationName;
	
	@Column(name="org_email")
	private String OrgEmail;
	
	@Column(name="org_phone")
	private String OrgPhone;
	
	@Column(name="org_address")
	private String orgAddress;
	
	@Column(name="org_city")
	private String orgCity;
	
	@Column(name="org_state")
	private String orgState;
	
	@Column(name="org_zip")
	private String orgZip;
	
	@Column(name="mission")
	private String mission;
	
	@Column(name="charitable_category")
	private String charitableCategory;
		
	@Column(name="campaign")
	private String campaign;

	
	
	public String getOrgId() {
		return OrgId;
	}

	public void setOrgId(String orgId) {
		OrgId = orgId;
	}

	public String getOrganizationName() {
	return organizationName;
}

	public void setOrganizationName(String organizationName) {
	this.organizationName = organizationName;
}

public String getOrgEmail() {
	return OrgEmail;
}

public void setOrgEmail(String orgEmail) {
	OrgEmail = orgEmail;
}

public String getOrgPhone() {
	return OrgPhone;
}

public void setOrgPhone(String orgPhone) {
	OrgPhone = orgPhone;
}

public String getOrgAddress() {
	return orgAddress;
}

public void setOrgAddress(String orgAddress) {
	this.orgAddress = orgAddress;
}

public String getOrgCity() {
	return orgCity;
}

public void setOrgCity(String orgCity) {
	this.orgCity = orgCity;
}

public String getOrgState() {
	return orgState;
}

public void setOrgState(String orgState) {
	this.orgState = orgState;
}

public String getOrgZip() {
	return orgZip;
}

public void setOrgZip(String orgZip) {
	this.orgZip = orgZip;
}

public String getMission() {
	return mission;
}

public void setMission(String mission) {
	this.mission = mission;
}

public String getCharitableCategory() {
	return charitableCategory;
}

public void setCharitableCategory(String charitableCategory) {
	this.charitableCategory = charitableCategory;
}

public String getCampaign() {
	return campaign;
}

public void setCampaign(String campaign) {
	this.campaign = campaign;
}
}

