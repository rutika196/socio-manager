package VO;

import java.io.Serializable;

public class Complaint_VO implements Serializable {

	private int complaint_Id;
	private String complaint_Name;
	private String complaint_Description;
	private String complaint_Path;
	private String status;
	
	
	public int getComplaint_Id() {
		return complaint_Id;
	}
	public void setComplaint_Id(int complaint_Id) {
		this.complaint_Id = complaint_Id;
	}
	public String getComplaint_Name() {
		return complaint_Name;
	}
	public void setComplaint_Name(String complaint_Name) {
		this.complaint_Name = complaint_Name;
	}
	public String getComplaint_Description() {
		return complaint_Description;
	}
	public void setComplaint_Description(String complaint_Description) {
		this.complaint_Description = complaint_Description;
	}
	public String getComplaint_Path() {
		return complaint_Path;
	}
	public void setComplaint_Path(String complaint_Path) {
		this.complaint_Path = complaint_Path;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
