package com.claim.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.PrimaryKeyJoinColumns;
import javax.persistence.UniqueConstraint;

@Entity
public class Team {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int team_id;
	private String companyName;
	private String donorTask;
	private String donorType;
	private String fundraiser;
	
	@OneToOne(cascade=CascadeType.REFRESH)
	@JoinColumn(name="admin_id", insertable=true, updatable=true)
	private Person person;
	
	@ManyToMany
	private List<Members> member; //one team have numbers of members
	
	@OneToOne(cascade=CascadeType.REFRESH)
	private Task task;
	
	
	
	public List<Members> getMember() {
		return member;
	}
	public void setMember(List<Members> member) {
		this.member = member;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public String getDonorTask() {
		return donorTask;
	}
	public void setDonorTask(String donorTask) {
		this.donorTask = donorTask;
	}
	public String getDonorType() {
		return donorType;
	}
	public void setDonorType(String donorType) {
		this.donorType = donorType;
	}
	public String getFundraiser() {
		return fundraiser;
	}
	public void setFundraiser(String fundraiser) {
		this.fundraiser = fundraiser;
	}
	
	
	
}
