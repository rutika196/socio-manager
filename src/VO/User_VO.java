package VO;

import java.io.Serializable;

public class User_VO implements Serializable {
	
	private Long u_Id;
	private String un;
	private String pwd;
	private String email;
	private String status;
	private String type;
	
	public Long getU_Id() {
		return u_Id;
	}
	public void setU_Id(Long u_Id) {
		this.u_Id = u_Id;
	}
	public String getUn() {
		return un;
	}
	public void setUn(String un) {
		this.un = un;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
}
