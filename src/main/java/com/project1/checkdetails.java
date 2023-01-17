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
 * Servlet implementation class checkdetails
 */
@WebServlet("/checkdetails")
public class checkdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		adminDetails ad=new adminDetails();
		//Manager mn=new Manager();
		try {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean login=ad.Login(username, password);
		if(login) {
			RequestDispatcher rd=request.getRequestDispatcher("adminpanel.jsp");
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
