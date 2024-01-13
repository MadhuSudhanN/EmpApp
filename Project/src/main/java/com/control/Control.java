package com.control;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Service.*;

@Controller
public class Control {
	@RequestMapping("/App1")
	public String featch() {
		return "Featch.jsp";
	}

	@RequestMapping("/App2")
	public String Save(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("email") String email, @RequestParam("deptName") String DeptName,
			@RequestParam("phnum") String phnum)  {
		

		try {
			Insert.ms(id,StringFormatte.mS(name), StringFormatte.mS(email), StringFormatte.mS(DeptName), StringFormatte.mS(phnum));
			return "Featch.jsp";
		} catch (Exception e) {
			return "Invalid.jsp";
		}

		
	}
	@RequestMapping("/App3")
	public String featch1(@RequestParam("id") int id ) {
		
		try {
			Delete.del(id);
			return "Featch.jsp";
		} catch (Exception e) {
			return "Invalid.jsp";
		}

	}
	@RequestMapping("/App4")
	public String uName(@RequestParam("id") int id ,@RequestParam("name") String name) {
		try {
			if(Update.uName(id,StringFormatte.mS(name)).equals("no"))
			{
				return "Update.jsp";
			}
			else
			{
				return "Featch.jsp";
			}

		} catch (Exception e) {
			return "Invalid.jsp";
		}

	}
	@RequestMapping("/App5")
	public String uEmail(@RequestParam("id") int id,@RequestParam("email") String email) {

		try {
			Update.uEmail(id,StringFormatte.mS(email));
			return "Featch.jsp";
		} catch (Exception e) {
			return "Invalid.jsp";
		}

	}


	@RequestMapping("/App6")
	public String uDept(@RequestParam("id") int id,@RequestParam("deptName") String deptName) {

		try {
			Update.uDep(id,StringFormatte.mS(deptName));
			return "Featch.jsp";

		} catch (Exception e) {
			return "Invalid.jsp";
		}

	}
	@RequestMapping("/App7")
	public String uPhn(@RequestParam("id") int id,@RequestParam("phNum") String phNum) {

		try {
			Update.uPhn(id,StringFormatte.mS(phNum));
			return "Featch.jsp";

		} catch (Exception e) {
			return "Invalid.jsp";
		}

	}



}
