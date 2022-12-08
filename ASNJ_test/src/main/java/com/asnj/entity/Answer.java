package com.asnj.entity;

public class Answer {
	private int com_pk;
	private int ques_pk;
	private String com_admin_id;
	private String com_answer;
	private String com_admin_time;
	
	public String getCom_admin_time() {
		return com_admin_time;
	}
	public void setCom_admin_time(String com_admin_time) {
		this.com_admin_time = com_admin_time;
	}
	public int getCom_pk() {
		return com_pk;
	}
	public void setCom_pk(int com_pk) {
		this.com_pk = com_pk;
	}
	public int getQues_pk() {
		return ques_pk;
	}
	public void setQues_pk(int ques_pk) {
		this.ques_pk = ques_pk;
	}
	public String getCom_admin_id() {
		return com_admin_id;
	}
	public void setCom_admin_id(String com_admin_id) {
		this.com_admin_id = com_admin_id;
	}
	public String getCom_answer() {
		return com_answer;
	}
	public void setCom_answer(String com_answer) {
		this.com_answer = com_answer;
	}
	
	

}
