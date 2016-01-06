package com.skyhorse.scs.Bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USER_TABLE")
public class RegisterBean {

	//Auto Generate
	private String UserID;
	private String UNAME;
	//Auto Generate at first time
	private String PSSWD;
	private String Email;
	private String Phone;
	private String Address;
	private String sec_que;
	private String sec_ans;
	private String role;
	
	@Id
	
    @Column(name="USERID")
	public String getUserID() {
		return UserID;
	}
	public void setUserID(String userID) {
		UserID = userID;
	}
	@Column(name="USERNAME")
	public String getUNAME() {
		return UNAME;
	}
	public void setUNAME(String uNAME) {
		UNAME = uNAME;
	}
	@Column(name="USER_PASSWORD")
	public String getPSSWD() {
		return PSSWD;
	}
	public void setPSSWD(String pSSWD) {
		PSSWD = pSSWD;
	}
	@Column(name="EMAIL")
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	@Column(name="PHONE")
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	@Column(name="ADDRESS")
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	@Column(name="SECURITY_QUE")
	public String getSec_que() {
		return sec_que;
	}
	public void setSec_que(String sec_que) {
		this.sec_que = sec_que;
	}
	@Column(name="SECURITY_ANS")
	public String getSec_ans() {
		return sec_ans;
	}
	public void setSec_ans(String sec_ans) {
		this.sec_ans = sec_ans;
	}
	@Column(name="USER_ROLE")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	
	
}
