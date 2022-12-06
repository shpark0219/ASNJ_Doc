package com.asnj.entity;

public class Question {
	
	private int ques_pk;
	private int mem_pk;
	private String ques_user_id;
	private String ques_title;
	private String ques_time;
	private String ques_content;
	
	public int getQues_pk() {
		return ques_pk;
	}
	public void setQues_pk(int ques_pk) {
		this.ques_pk = ques_pk;
	}
	public int getMem_pk() {
		return mem_pk;
	}
	public void setMem_pk(int mem_pk) {
		this.mem_pk = mem_pk;
	}
	public String getQues_user_id() {
		return ques_user_id;
	}
	public void setQues_user_id(String ques_user_id) {
		this.ques_user_id = ques_user_id;
	}
	public String getQues_title() {
		return ques_title;
	}
	public void setQues_title(String ques_title) {
		this.ques_title = ques_title;
	}
	public String getQues_time() {
		return ques_time;
	}
	public void setQues_time(String ques_time) {
		this.ques_time = ques_time;
	}
	public String getQues_content() {
		return ques_content;
	}
	public void setQues_content(String ques_content) {
		this.ques_content = ques_content;
	}
	
}
