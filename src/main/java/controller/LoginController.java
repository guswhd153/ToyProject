package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping("login.injiTech")
	public ModelAndView loginInji (HttpServletRequest request) {
		System.out.println("로그인 페이지 호출");
		ModelAndView mav = new ModelAndView("login/login");
		return mav;
	}
	
	@RequestMapping("signup.injiTech") 
	public ModelAndView signInji (HttpServletRequest request) {
		System.out.println("회원가입 페이지 호출");
		ModelAndView mav = new ModelAndView("login/signup");
		return mav;
	}
	
	@RequestMapping("idsearch.injiTech")
	public ModelAndView idsearch (HttpServletRequest request) {
		System.out.println("id 찾기 호출");
		ModelAndView mav = new ModelAndView("login/idsearch");
		return mav;
	}
	@RequestMapping("pwsearch.injiTech")
	public ModelAndView tempw (HttpServletRequest request) {
		System.out.println("pw 찾기 호출");
		ModelAndView mav = new ModelAndView("login/pwsearch");
		return mav;
	}
}
