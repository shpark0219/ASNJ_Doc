package com.asnj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.asnj.entity.Disease;
import com.asnj.mapper.DiseaseMapper;


@RestController
@RequestMapping(value="/disease/*")
public class DiseaseController {

	@Autowired
	private DiseaseMapper mapper;
	
	@RequestMapping(value = "/DiseasePage.do", method = RequestMethod.GET)
	public List<Disease> DiseaseAjax(String disease_crops){
		List<Disease> list = mapper.diseaseSelect(disease_crops);
		return list;	
	}
	
}
