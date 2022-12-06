package com.asnj.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.asnj.entity.Criteria;
import com.asnj.entity.Disease;
import com.asnj.entity.Member;
import com.asnj.entity.PageMaker;
import com.asnj.entity.Pest;
import com.asnj.entity.Question;
import com.asnj.mapper.AsnjMapper;

@Controller
public class AsnjController {
	
	@Autowired
	private AsnjMapper mapper;
	
	// 페이지 이동
	// 메인페이지 -> json 받아오려면 restcontroller 페이지에서 따로 지정해야 함
	// 메인 페이지에 비동기 통신이 들어가게 바뀌면 컨트롤러 타입을 변경하거나 이동할 예정
	@GetMapping("/Mainpage.do")
	public String Main() {
		System.out.print("main.jsp로 이동\n");
		return "main";
	}
	
	@GetMapping("/Introduce.do")
	public String Intro() {
		System.out.print("introduce.jsp로 이동\n");
		return "introduce";
	}
	
	// 검색페이지 이동
	@GetMapping("/SearchView.do")
	public String SearchView(Model model, String search) {
		System.out.print("search_View.jsp로 이동\n");
		List<Disease> diseassearchlist = mapper.diseaseSearch(search);
		List<Pest> pestsearchlist = mapper.pestSearch(search);
		model.addAttribute("search", search);
		model.addAttribute("diseassearchlist", diseassearchlist);
		model.addAttribute("pestsearchlist", pestsearchlist);
		return "search_View";
	}	
	
	// 커뮤니티(문의사항)
	@GetMapping("/Notice.do")
	public String Notice(Model model) {
		System.out.print("notice.jsp로 이동\n");
		List<Question> questionlist = mapper.questionSelect();
		model.addAttribute("questionlist", questionlist);
		return "notice";
	}
	
	@GetMapping("/NoticePage.do")
	public ModelAndView openBoardList(Criteria cri) throws Exception {
        
	    ModelAndView mav = new ModelAndView("/NoticePage.do");
	        
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(100);
	        
	    List<Map<String,Object>> list = mapper.questionPagingSelect(cri);
	    mav.addObject("list", list);
	    mav.addObject("pageMaker", pageMaker);
	        
	    return mav;
	        
	}


	// 문의사항 글쓰기
	@PostMapping("/QuestionInsert.do")
	public String QuestionInsert(Model model, Question vo) {
		int confirm = mapper.questionInsert(vo);
		if(confirm > 0) {
			model.addAttribute("msg", "문의 등록 성공!\\n"+vo.getQues_user_id()+"님의 문의에 빠른 답변 드리겠습니다.");
    		model.addAttribute("url", "Notice.do");
		} else {
			model.addAttribute("msg", "문의사항 등록 실패!");
    		model.addAttribute("url", "Notice.do");
		}
		return "alert";
	}
	
	//  문의사항 삭제
	@GetMapping("/QuestionDelete.do")
	public String QuestionDelete(Model model, int ques_pk, int mem_pk) {
		int confirm = mapper.questionDelete(ques_pk);
		if(confirm > 0) {
			model.addAttribute("msg", "문의사항 삭제 성공!");
    		model.addAttribute("url", "Mypage.do?mem_pk="+mem_pk);
		} else {
			model.addAttribute("msg", "문의사항 삭제 실패!\\n다시 시도해주세요!");
    		model.addAttribute("url", "Mypage.do?mem_pk="+mem_pk);
		}
		return "alert";
	}
	
	
	// 농업일지 띄우기
	@GetMapping("/Diary.do")
	public String Diary() {
		System.out.print("diary.jsp로 이동\n");
		return "diary";
	}
	
	// 병해충 분석 페이지 이동
	@GetMapping("/Prediction.do")
	public String Prediction() {
		System.out.print("prediction.jsp로 이동\n");
		return "prediction";
	}
	
	// 병해충 분석 결과로 이동
	@GetMapping("/Predictionresult.do")
	public String Predictionresult(Model model, String result) {

		if(result.equals("정상")) {
			model.addAttribute("msg", "분석 성공! 결과는 "+result+"입니다.\\n다른 병해충 사진을 업로드 해주세요!");
			model.addAttribute("url", "Prediction.do");
			
		} else if(result.equals("탄저병") || result.equals("흰가루병")) {
			model.addAttribute("msg", "분석 성공! 결과는 "+result+"입니다.\\n해당 질병 정보 페이지로 이동합니다.");
//			int disease_pk = mapper.질병기본키검색매퍼만들기;
			model.addAttribute("url", "PredictionInfoPage.do?disease_pk=63");
		} else {
			model.addAttribute("msg", "분석 성공! 결과는 "+result+"입니다.\\n해당 해충 정보 페이지로 이동합니다.");
//			int pest_pk = mapper.해충기본키검색매퍼만들기;
			model.addAttribute("url", "PestInfoPage.do?pest_pk=11");
		}
		return "alert";
	}
	
	// 질병 페이지
	@GetMapping("/Disease.do")
	public String Disease(Model model, String disease_crops) {
		System.out.print("disease.jsp로 이동\n");
		List<Disease> diseaselist = mapper.diseaseSelect(disease_crops);
		model.addAttribute("diseaselist", diseaselist);
		return "disease";
	}
	
	// 해충 페이지
	@GetMapping("/Pests.do")
	public String Pests(Model model, String pest_crops) {
		System.out.print("pests.jsp로 이동\n");
		List<Pest> pestlist = mapper.pestSelect(pest_crops);
		model.addAttribute("pestlist", pestlist);
		return "pests";
	}
	
	// 질병 정보 페이지
	@GetMapping("/PredictionInfoPage.do")
	public String PredictionInfoPage(Model model, int disease_pk) {
		System.out.print("prediction_Info.jsp로 이동\n");
		List<Disease> diseaseinfo = mapper.diseaseinfoSelect(disease_pk);
		System.out.println(diseaseinfo.toString());
		model.addAttribute("diseaseinfo", diseaseinfo);
		return "prediction_Info";
	}
	
	// 해충 정보 페이지
	@GetMapping("/PestInfoPage.do")
	public String PestInfoPage(Model model, int pest_pk) {
		System.out.print("prediction_Info.jsp로 이동\n");
		List<Pest> pestinfo = mapper.pestinfoSelect(pest_pk);
		System.out.println(pestinfo.toString());
		model.addAttribute("pestinfo", pestinfo);
		return "pest_Info";
	}
	
	// 회원 정보 불러오기
	@RequestMapping("/UserInfo.do")
	public String UserInfo(Model model) {
		System.out.print("user_Info.jsp로 이동\n");
		List<Member> list = mapper.memberSelect();
		model.addAttribute("list", list);
		return "user_Info";
	}
	
	@GetMapping("/Loginpage.do")
	public String Loginpage() {
		return "login";
	}
	
	@GetMapping("/Joinpage.do")
	public String Joinpage() {
		return "join";
	}
	
	// Mypage.do에 ?mem_pk=${loginMember.mem_pk}제이쿼리 다 추가해야함??? 이건 일단 나중에 진행
	@GetMapping("/Mypage.do")
	public String Mypage(Model model, HttpServletRequest request, Member mem) {
	//public String Mypage(Member mem, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("loginMember");
		
		Member loginMember = mapper.memberOneSelect(mem);
		session.setAttribute("loginMember", loginMember);
		List<Question> myquestionlist = mapper.mypagequestionSelect(mem);
		model.addAttribute("myquestionlist", myquestionlist);
		return "mypage";
	}
	
	// 마이페이지 회원 정보 수정
	@PostMapping("/MypageInfo.do")
	public String MypageInfo(Model model, Member mem) {
		int confirm = mapper.memberUpdate(mem);
		if(confirm > 0) {
			model.addAttribute("msg", "회원 정보 수정 성공!");
    		model.addAttribute("url", "Mypage.do?mem_pk="+mem.getMem_pk());
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
    		model.addAttribute("url", "Mypage.do");
		}
		return "alert";
	}
	
	// 마이페이지 문의사항
	@GetMapping("/MypageQusetion.do")
	public String MypageQusetion(Model model, Member mem) {
		System.out.print("mypage 문의사항으로 이동\n");
		List<Question> myquestionlist = mapper.mypagequestionSelect(mem);
		model.addAttribute("myquestionlist", myquestionlist);
		return "mypage";
	}
	
	// 회원 탈퇴 기능
	@GetMapping("/MemberDelet.do")
	public String MemberDelet(Model model, int mem_pk, HttpSession session) {
		mapper.questionDeleteMem(mem_pk);
		int confirm = mapper.memberDelete(mem_pk);
		if(confirm > 0) {
			session.removeAttribute("loginMember");
			model.addAttribute("msg", "회원 정보 삭제 성공!\\n다음에 또 뵈어요!");
    		model.addAttribute("url", "Mainpage.do");
		} else {
			model.addAttribute("msg", "회원 정보 삭제 실패!");
    		model.addAttribute("url", "Mainpage.do");
		}
		return "alert";	
	}
	
	// 회원 삭제 기능
	@GetMapping("/MemberDeletadmin.do")
	public String MemberDeletadmin(Model model, int mem_pk, HttpSession session) {
		mapper.questionDeleteMem(mem_pk);
		int confirm = mapper.memberDelete(mem_pk);
		if(confirm > 0) {
			model.addAttribute("msg", "회원 정보 삭제 성공!");
    		model.addAttribute("url", "UserInfo.do");
		} else {
			model.addAttribute("msg", "회원 정보 삭제 실패!");
    		model.addAttribute("url", "UserInfo.do");
		}
		return "alert";	
	}
	
	// 로그인 기능
	@PostMapping("/Login.do")
	public String Login(Model model, Member mem, HttpServletRequest request) {
		// 입력받은 id, pw와 같은 정보가 있는지 확인하고 그 값에 해당하는
		// 회원의 정보를 가져온다.
		Member loginMember = mapper.memberLogin(mem);
		
		// 만약에 회원의 정보를 가져왔다면, 즉 로그인 할 회원의 정보가 있다면
		// 세션에 저장
		if(loginMember != null) {
			// 1. 세션 객체 생성
			HttpSession session = request.getSession();
			
			// 2. 세션에 값 저장(회원정보 데이터를 객체 바인딩)
			session.setAttribute("loginMember", loginMember);
			model.addAttribute("msg", "로그인 성공!\\n어서오세요, "+loginMember.getMem_user_name()+"님!");
    		model.addAttribute("url", "Mainpage.do");
		} else {
			model.addAttribute("msg", "로그인 실패! 다시 로그인 해주세요");
    		model.addAttribute("url", "Loginpage.do");
		}
		return "alert";
	}
	
	// 회원가입 기능
	@PostMapping("/Join.do")
	public String Join(Member mem, Model model) {
		int joinMember = mapper.memberJoin(mem);
		if(joinMember > 0) {
			model.addAttribute("msg", "회원가입 성공!\\n어서 오세요, "+mem.getMem_user_name()+"님🎉!");
			model.addAttribute("url", "Mainpage.do");
		} else {
			model.addAttribute("msg", "회원가입 실패! 양식에 맞춰 다시 입력해주세요!");
			model.addAttribute("url", "Joinpage.do");
		}
		return "alert";	
	}
	// 로그아웃 기능
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session, Model model) {
		session.removeAttribute("loginMember");
		model.addAttribute("msg", "로그아웃 성공, 즐거운 하루 되세요😎!");
		model.addAttribute("url", "index.jsp");
		return "alert";
	}

}
