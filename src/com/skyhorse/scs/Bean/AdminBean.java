package com.skyhorse.scs.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="ADMIN_TABLE")
public class AdminBean {
	@Id
	@Column(name="UNAME")
	@NotEmpty(message = "Please enter your username")
	private String uname;  
	
	@Column(name="PSSWD")
	@NotEmpty(message = "Please enter your password")
	private String psswd;


	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPsswd() {
		return psswd;
	}

	public void setPsswd(String psswd) {
		this.psswd = psswd;
	} 
	
	

	

}
