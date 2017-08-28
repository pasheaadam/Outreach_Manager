package com.claim.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


import lombok.Data;

@Entity  
@Table(name="task")
@Data

public class Task {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="task_id")
	private Integer taskId;
	
	@Column(name="donor_task")
	private String donorTask;
	
	@Column(name="fundraiser")
	private String fundraiser;
	
	@Column(name="company_partner")
	private String companyPartner;
		
	@Column(name="donor_type")
	private String donorType;
	
	@Column(name="donor_category")
	private String donorCategory;
	
	@Column(name="task_description")
	private String taskDescription;
		
	@Column(name="created_date")
	private String createdDate;
	
	@Column(name="date_start")
	private String dateStart;
	
	@Column(name="date_end")
	private String dateEnd;
	
	@Column(name="dollar_goal")
	private Integer dollarGoal;
	
	@Column(name="dollar_current")
	private Integer dollarCurrent;
	
	@Column(name="volunteer_goal")
	private Integer volunteerGoal;
	
	@Column(name="volunteer_hrsgoal")
	private Integer volunteerHrsgoal;
	
	@Column(name="volunteer_current")
	private Integer volunteerCurrent;
	
	@Column(name="volunteer_hrscurrent")
	private Integer volunteerHrscurrent;
	
	@Column(name="dollar_final")
	private Integer dollarFinal;
	
	@Column(name="volunteer_hrsfinal")
	private Integer volunteerHrsfinal;
	
	@Column(name="volunteer_final")
	private Integer volunteerFinal;

	@ManyToOne
	@JoinColumn(referencedColumnName="company_id")
	private Company company;
	
	@OneToOne(mappedBy="task",cascade=CascadeType.REFRESH)
	private Team team;
	
	

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public Integer getTaskId() {
		return taskId;
	}

	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public String getFundraiser() {
		return fundraiser;
	}

	public void setFundraiser(String fundraiser) {
		this.fundraiser = fundraiser;
	}	

	public String getCompanyPartner() {
		return companyPartner;
	}

	public void setCompanyPartner(String companyPartner) {
		this.companyPartner = companyPartner;
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

	public String getDonorCategory() {
		return donorCategory;
	}

	public void setDonorCategory(String donorCategory) {
		this.donorCategory = donorCategory;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getDateStart() {
		return dateStart;
	}

	public void setDateStart(String dateStart) {
		this.dateStart = dateStart;
	}

	public String getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(String dateEnd) {
		this.dateEnd = dateEnd;
	}

	public int getDollarGoal() {
		return dollarGoal;
	}

	public void setDollarGoal(Integer dollarGoal) {
		this.dollarGoal = dollarGoal;
	}

	public int getDollarCurrent() {
		return dollarCurrent;
	}

	public void setDollarCurrent(Integer dollarCurrent) {
		this.dollarCurrent = dollarCurrent;
	}

	public int getVolunteerGoal() {
		return volunteerGoal;
	}

	public void setVolunteerGoal(Integer volunteerGoal) {
		this.volunteerGoal = volunteerGoal;
	}

	public int getVolunteerHrsgoal() {
		return volunteerHrsgoal;
	}

	public void setVolunteerHrsgoal(Integer volunteerHrsgoal) {
		this.volunteerHrsgoal = volunteerHrsgoal;
	}

	public int getVolunteerCurrent() {
		return volunteerCurrent;
	}

	public void setVolunteerCurrent(Integer volunteerCurrent) {
		this.volunteerCurrent = volunteerCurrent;
	}

	public int getVolunteerHrscurrent() {
		return volunteerHrscurrent;
	}

	public void setVolunteerHrscurrent(Integer volunteerHrscurrent) {
		this.volunteerHrscurrent = volunteerHrscurrent;
	}

	public int getDollarFinal() {
		return dollarFinal;
	}

	public void setDollarFinal(Integer dollarFinal) {
		this.dollarFinal = dollarFinal;
	}

	public int getVolunteerHrsfinal() {
		return volunteerHrsfinal;
	}

	public void setVolunteerHrsfinal(Integer volunteerHrsfinal) {
		this.volunteerHrsfinal = volunteerHrsfinal;
	}

	public int getVolunteerFinal() {
		return volunteerFinal;
	}

	public void setVolunteerFinal(Integer volunteerFinal) {
		this.volunteerFinal = volunteerFinal;
	}
	
	
			
	
}
