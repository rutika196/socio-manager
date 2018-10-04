package VO;

import java.io.Serializable;

public class Resident_VO {
	
	private int resident_Id;
	private String resident_Name;
	private long resident_Contact;
	private long alternative_No;
	private String member_Type;
	private String residential_type;
	private int house_No;
	private String wing_Add;
	private String occupation_Add;
	private long emergancy_No;
	private String resident_Email;
	
	public int getResident_Id() {
		return resident_Id;
	}
	public void setResident_Id(int resident_Id) {
		this.resident_Id = resident_Id;
	}
	public String getResident_Name() {
		return resident_Name;
	}
	public void setResident_Name(String resident_Name) {
		this.resident_Name = resident_Name;
	}
	public long getResident_Contact() {
		return resident_Contact;
	}
	public void setResident_Contact(long resident_Contact) {
		this.resident_Contact = resident_Contact;
	}
	
	public String getMember_Type() {
		return member_Type;
	}
	public void setMember_Type(String member_Type) {
		this.member_Type = member_Type;
	}
	
	public int getHouse_No() {
		return house_No;
	}
	public void setHouse_No(int house_No) {
		this.house_No = house_No;
	}
	public String getWing_Add() {
		return wing_Add;
	}
	public void setWing_Add(String wing_Add) {
		this.wing_Add = wing_Add;
	}
	public String getOccupation_Add() {
		return occupation_Add;
	}
	public void setOccupation_Add(String occupation_Add) {
		this.occupation_Add = occupation_Add;
	}

	public String getResidential_type() {
		return residential_type;
	}
	public void setResidential_type(String residential_type) {
		this.residential_type = residential_type;
	}
	public long getAlternative_No() {
		return alternative_No;
	}
	public void setAlternative_No(long alternative_No) {
		this.alternative_No = alternative_No;
	}
	public long getEmergancy_No() {
		return emergancy_No;
	}
	public void setEmergancy_No(long emergancy_No) {
		this.emergancy_No = emergancy_No;
	}
	public String getResident_Email() {
		return resident_Email;
	}
	public void setResident_Email(String resident_Email) {
		this.resident_Email = resident_Email;
	}

}
