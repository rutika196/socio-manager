package VO;

import java.io.Serializable;


public class Socdetail_VO {
	
	
	private int soc_Id;
	private String board_Name;
	private String designation_Name;
	private String society_Name;

	private String society_add;
	private int pincode;
	private int house_No;
	private String association_Email;
	private long association_Contact;
	private String msg;
	
	private Country_VO country_Id;
	private State_VO state_Id;
	
	public int getSoc_Id() {
		return soc_Id;
	}
	public void setSoc_Id(int soc_Id) {
		this.soc_Id = soc_Id;
	}
	public String getBoard_Name() {
		return board_Name;
	}
	public void setBoard_Name(String board_Name) {
		this.board_Name = board_Name;
	}
	public String getSociety_Name() {
		return society_Name;
	}
	public void setSociety_Name(String society_Name) {
		this.society_Name = society_Name;
	}
	
	public String getSociety_add() {
		return society_add;
	}
	public void setSociety_add(String society_add) {
		this.society_add = society_add;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getHouse_No() {
		return house_No;
	}
	public void setHouse_No(int house_No) {
		this.house_No = house_No;
	}
	public String getAssociation_Email() {
		return association_Email;
	}
	public void setAssociation_Email(String association_Email) {
		this.association_Email = association_Email;
	}
	public long getAssociation_Contact() {
		return association_Contact;
	}
	public void setAssociation_Contact(long association_Contact) {
		this.association_Contact = association_Contact;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getDesignation_Name() {
		return designation_Name;
	}
	public void setDesignation_Name(String designation_Name) {
		this.designation_Name = designation_Name;
	}
	public Country_VO getCountry_Id() {
		return country_Id;
	}
	public void setCountry_Id(Country_VO country_Id) {
		this.country_Id = country_Id;
	}
	public State_VO getState_Id() {
		return state_Id;
	}
	public void setState_Id(State_VO state_Id) {
		this.state_Id = state_Id;
	}
	
	
	
	
}
