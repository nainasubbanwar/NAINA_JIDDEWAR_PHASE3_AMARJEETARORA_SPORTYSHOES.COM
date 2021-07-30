package com.online.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin")
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private long ID;

	@Column(name = "admin_id")
	private String adminId;

	@Column(name = "admin_pwd")
	private String pwd;

	public Admin(long iD, String adminId, String pwd) {
		super();
		ID = iD;
		this.adminId = adminId;
		this.pwd = pwd;
	}

	public Admin() {
		super();
	}

	public long getID() {
		return ID;
	}

	public void setID(long iD) {
		ID = iD;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setAdminPwd(String pwd) {
		this.pwd = pwd;
	}

}
