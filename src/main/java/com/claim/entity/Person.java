package com.claim.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;

import lombok.Data;



@Entity  // this tells spring to use hibernate and map this class to our database column
@Table(name="person") //this tells hibernate the name of the table in our database public class Person {
@Data	
	
public class Person {

	@Id //tell hibernate what the primary key is
	@Column(name="email")//Tell hi9bernate which column this variable maps to private string email
	private String email;
	
	@Column(name="first_name")
	private String firstName;
	
	@Column(name="last_name")
	private String lastName;
		
	@Column(name="password")
	private String password;
	
	@Column(name="profile_pic")
	private String profilePic="/img/avtar-notfound.jpg";
	
	@Column(name="share_images")
	private String shareImages;	
			
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="company_id", insertable=true, updatable=true)
	private Company companyId;
	

	public Company getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Company companyId) {
		this.companyId = companyId;
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

}
	
	

