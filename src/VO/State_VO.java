package VO;

public class State_VO {
	
	private int state_Id;
	private String state_Name;
	private String state_Des;
	private Country_VO country_Id;
	
	public int getState_Id() {
		return state_Id;
	}
	public void setState_Id(int state_Id) {
		this.state_Id = state_Id;
	}
	public String getState_Name() {
		return state_Name;
	}
	public void setState_Name(String state_Name) {
		this.state_Name = state_Name;
	}
	public String getState_Des() {
		return state_Des;
	}
	public void setState_Des(String state_Des) {
		this.state_Des = state_Des;
	}
	public Country_VO getCountry_Id() {
		return country_Id;
	}
	public void setCountry_Id(Country_VO cvo) {
		this.country_Id = cvo;
	}

}
