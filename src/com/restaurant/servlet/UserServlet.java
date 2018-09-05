package com.restaurant.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.restaurant.po.User;
import com.restaurant.po.vo.ResultInfo;
import com.restaurant.service.UserService;
import com.restaurant.util.JsonUtil;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionName = request.getParameter("actionName");
		if("login".equals(actionName)){
			login(request,response);
		}else if("register".equals(actionName)){
			register(request,response);
		}

	}

	private void register(HttpServletRequest request, HttpServletResponse response) {
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		String email = request.getParameter("email");
		ResultInfo<User> resultInfo = userService.register(uname,upwd,email);
		JsonUtil.toJson(resultInfo, response);
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) {
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		String rem = request.getParameter("rem");
		ResultInfo<User> resultInfo = userService.login(uname,upwd);
		if(resultInfo.getCode() == 1){
			if(Integer.parseInt(rem) == 1){
				String value = uname+"-"+upwd;
				Cookie cookie = new Cookie("user", value);
				cookie.setMaxAge(5*24*60*60);
				response.addCookie(cookie);
			}
			request.getSession().setAttribute("user", resultInfo.getResult());
		}
		JsonUtil.toJson(resultInfo, response);
	}

}
