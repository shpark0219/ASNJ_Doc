package com.asnj.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.asnj.mapper.AsnjMapper;
import com.asnj.entity.Disease;
import com.asnj.entity.Member;

// Ajax 통신을 위해서 사용하는 Controller
@RestController
public class AsnjRestController {
	
	@Autowired
	private AsnjMapper mapper;
	
	// 회원 목록
	@RequestMapping(value = "/Member")
	public List<Member> MemberAjax() {
		List<Member> list = mapper.memberSelect();
		return list;
	}
	
//	// ajax 질병 게시판
//	@GetMapping("/disease")
//	public List<Disease> diseaseAjaxList(@RequestParam("disease_crops") String disease_crops){
//		System.out.println(disease_crops);
//		List<Disease> diseasesList = mapper.diseaseSelect(disease_crops);
//		return diseasesList;
//	}
	
	// Flask에서 문자열 받아보기
	@RequestMapping(value = "/test.do", method = RequestMethod.GET)
	public ModelAndView Test() {
		ModelAndView mav = new ModelAndView();

		String url = "http://127.0.0.1:1234/toASNJ";
		String sb = "";
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line + "\n";
			}
			System.out.println("이건 Flask에서 Spring으로 값 보내기 : "+sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("연결 완료~");
			}
			br.close();
			System.out.println(" ");
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("wordtest", sb.toString()); // "test1"는 jsp파일에서 받을때 이름,
		// sb.toString은 value값(여기에선 test)
		mav.addObject("fail", false);
		mav.setViewName("test"); // jsp파일 이름
		return mav;
	}
	
	// Flask에 이미지 전송 후 문자열 받아보기
	@RequestMapping(value = "/imgtest.do", method = RequestMethod.GET)
	public ModelAndView ImgTest() {
		ModelAndView mav = new ModelAndView();

		String url = "http://127.0.0.1:1234/test";
		String sb = "";
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line + "\n";
			}
			System.out.println("이미지 파일 실험 중 : "+sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("연결 완료~");
			}
			br.close();
			System.out.println(" ");
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("imgtest", sb.toString()); // "test1"는 jsp파일에서 받을때 이름,
		// sb.toString은 value값(여기에선 test)
		mav.addObject("fail", false);
		mav.setViewName("test"); // jsp파일 이름
		return mav;

	}
}
