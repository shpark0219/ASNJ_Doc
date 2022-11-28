package com.asnj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.asnj.entity.Disease;
import com.asnj.entity.Member;
import com.asnj.mapper.DiseaseMapper;


@Controller
@RequestMapping(value="	*")
public class DiseaseController {

	@Autowired
	private DiseaseMapper mapper;
	
	@RequestMapping(value = "/DiseasePage.do", method = RequestMethod.GET)
	public List<Disease> DiseaseAjax(String disease_crops){
		List<Disease> list = mapper.diseaseSelect(disease_crops);
		return list;	
	}
	
	// 질병 정보 불러오기
	@RequestMapping(value = "/DiseasetestPage.do" , method = RequestMethod.GET)
	public String Disease(Model model, String disease_crop) {
		System.out.print("disease.jsp로 이동\n");
		List<Disease> list = mapper.diseaseSelect(disease_crop);
		model.addAttribute("list", list);
		return "diseasetest";
	}	
	
	
	
}
