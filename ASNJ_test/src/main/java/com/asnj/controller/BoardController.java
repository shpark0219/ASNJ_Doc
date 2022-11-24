package com.asnj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asnj.entity.Member;
import com.asnj.entity.Question;
import com.asnj.mapper.MemberMapper;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	
	@Autowired
	private MemberMapper mapper;
	
	// 회원 목록
	@RequestMapping(value = "/MemberList.do", method = RequestMethod.GET)
	public String MemberList(Model model) {
		List<Member> list = mapper.memberSelect();
		model.addAttribute("list", list);
		return "membertest";
	}
	
	// 문의사항
	@RequestMapping(value = "/QuestionList.do", method = RequestMethod.GET)
	public String QuestionList(Model model) {
		List<Question> list = mapper.questionSelect();
		model.addAttribute("list", list);
		return "question";
	}

}
