package VO;

public class City_VO {
	
	private int city_Id;
	private String city_Name;
	private String area_Name;
	private int pincode_No;
	private String area_Detail;
	private Country_VO country_Id;
	private State_VO state_Id;
	
	
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
	public int getCity_Id() {
		return city_Id;
	}
	public void setCity_Id(int city_Id) {
		this.city_Id = city_Id;
	}
	public String getCity_Name() {
		return city_Name;
	}
	public void setCity_Name(String city_Name) {
		this.city_Name = city_Name;
	}
	public String getArea_Name() {
		return area_Name;
	}
	public void setArea_Name(String area_Name) {
		this.area_Name = area_Name;
	}
	public int getPincode_No() {
		return pincode_No;
	}
	public void setPincode_No(int pincode_No) {
		this.pincode_No = pincode_No;
	}
	public String getArea_Detail() {
		return area_Detail;
	}
	public void setArea_Detail(String area_Detail) {
		this.area_Detail = area_Detail;
	}

}
