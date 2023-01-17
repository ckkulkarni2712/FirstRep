package com.project1;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class managerlogin
 */
@WebServlet("/managerlogin")
public class managerlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Manager mn=new Manager();
		try {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean login=mn.Login(username, password);
		if(login) {
			RequestDispatcher rd=request.getRequestDispatcher("managerpanel.jsp");
			rd.forward(request, response);
		}
		else {
			out.println("<font color=red size=18px>Login Failed! Invalid Username or Password<br>");
			out.println("<a href=loginpage.jsp>Click here to try again</a>");
		}
	}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
