package com.asnj.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.asnj.entity.Criteria;
import com.asnj.entity.Disease;
import com.asnj.entity.Member;
import com.asnj.entity.PageMaker;
import com.asnj.entity.Pest;
import com.asnj.entity.Question;

@Mapper
public interface AsnjMapper {

	// 로그인
	public Member memberLogin(Member mem);
	
	// 회원가입
	public int memberJoin(Member mem);
	
	// 회원정보 수정
	public int memberUpdate(Member mem);
	
	// 회원 탈퇴 및 회원 삭제
	public int memberDelete(int mem_pk);

	// 회원 리스트
	public List<Member> memberSelect();
	
	// 한 명의 회원만 검색하기
	public Member memberOneSelect(Member mem);
	
	// 문의사항 게시판
	public List<Question> questionSelect();
	
	// 마이페이지 문의사항 게시판
	public List<Question> mypagequestionSelect(Member mem);
	
	// 문의사항 등록
	public int questionInsert(Question vo);
	
	// 문의사항 삭제
	public int questionDelete(int ques_pk);
	
	// 회원 삭제 및 탈퇴시 문의사항 삭제
	public int questionDeleteMem(int mem_pk);
	
	// select 태그에 작물 넣기
	public List<Disease> diseasecropSelect();
	
	// 질병 정보 페이지 불러오기(작물로 검색) 기능 
	public List<Disease> diseaseSelect(String disease_crops);
		
	// 해충 정보 페이지 불러오기(작물로 검색) 기능 
	public List<Pest> pestSelect(String pest_crops);
	
	// 질병 상세 정보 페이지(질병명과 작물로 검색) 불러오기
	public List<Disease> diseaseinfoSelect(int disease_pk);
	
	// 질병 상세 정보 페이지(질병명과 작물로 검색) 불러오기
	public List<Pest> pestinfoSelect(int pest_pk);

	// ajax 질병 게시판
	public List<Disease> diseasesList();
	
	// 검색(질병)
	public List<Disease> diseaseSearch(String search);
	
	// 검색(해충)
	public List<Pest> pestSearch(String search);
	
	// 페이징
	// 문의사항 페이징
	public int questionCount();
	
	// 페이징 처리 후 문의사항 게시글 조회
	public List<Map<String, Object>> questionPagingSelect(Criteria cri);
	
	
}
