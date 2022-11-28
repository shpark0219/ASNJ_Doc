package com.asnj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.asnj.entity.Disease;

@Mapper
public interface DiseaseMapper {
	
	// 질병 정보 페이지 불러오기(작물로 검색) 기능 
	public List<Disease> diseaseSelect(String disease_crops);
	
	// 질병 상세 정보 페이지(질병명으로 검색) 불러오기
	public List<Disease> diseaseinfoSelect(String disease_name);
}
