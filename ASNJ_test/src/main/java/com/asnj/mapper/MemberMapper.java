package com.asnj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.asnj.entity.Member;
import com.asnj.entity.Question;

@Mapper
public interface MemberMapper {

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
}
