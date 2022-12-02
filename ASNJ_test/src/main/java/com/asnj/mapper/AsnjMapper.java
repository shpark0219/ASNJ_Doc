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
	public void memberUpdate(Member mem);
	
	// 회원 탈퇴 및 회원 삭제
	public Member memberDelete(Member mem);

	// 회원 리스트
	public List<Member> memberSelect();
	
	// 한 명의 회원만 검색하기
	public Member memberOneSelect(Member mem);
	
	// 문의사항 게시판
	public List<Question> questionSelect();
	
	// 마이페이지 문의사항 게시판
	public List<Question> mypagequestionSelect(Member mem);
	
	// 문의사항 등록
	public void questionInsert(Question vo);
	
	// select 태그에 작물 넣기
	public List<Disease> diseasecropSelect();
	
	// 질병 정보 페이지 불러오기(작물로 검색) 기능 
	public List<Disease> diseaseSelect(String disease_crops);
		
	// 질병 상세 정보 페이지(질병명과 작물로 검색) 불러오기
	public List<Disease> diseaseinfoSelect(int disease_pk);

	// ajax 질병 게시판
	public List<Disease> diseasesList();
	
	
}
