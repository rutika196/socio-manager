package VO;

import java.util.Date;

public class Event_VO {
	
	private int event_Id;
	private String Title;
	private String Place;
	private Date Date_Time;
	private String about;

	public int getEvent_Id() {
		return event_Id;
	}
	public void setEvent_Id(int event_Id) {
		this.event_Id = event_Id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getPlace() {
		return Place;
	}
	public void setPlace(String place) {
		Place = place;
	}
	public Date getDate_Time() {
		return Date_Time;
	}
	public void setDate_Time(Date date_Time) {
		Date_Time = date_Time;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}

}
