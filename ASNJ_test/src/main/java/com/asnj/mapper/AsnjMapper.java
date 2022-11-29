package com.asnj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.asnj.entity.Disease;
import com.asnj.entity.Member;
import com.asnj.entity.Question;

@Mapper
public interface AsnjMapper {

	// 로그인
	public Member memberLogin(Member mem);
	
	// 회원가입
	public int memberJoin(Member mem);
	
	// 회원정보 수정
	public Member memberUpdate(Member mem);
	
	// 회원 탈퇴 및 회원 삭제
	public Member memberDelete(Member mem);

	// 회원 리스트
	public List<Member> memberSelect();
	
	// 문의사항 게시판
	public List<Question> questionSelect();
	
	// select 태그에 작물 넣기
	public List<Disease> diseasecropSelect();
	
	// 질병 정보 페이지 불러오기(작물로 검색) 기능 
	public List<Disease> diseaseSelect(String disease_crops);
		
	// 질병 상세 정보 페이지(질병명으로 검색) 불러오기
	public List<Disease> diseaseinfoSelect(String disease_crops);
	
	
}
