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
 * Servlet implementation class addnewitem
 */
@WebServlet("/addnewitem")
public class addnewitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Menu mn=new Menu();
		try {
			String iname=request.getParameter("itemname");
			double iprice=Double.parseDouble(request.getParameter("price"));
			boolean flag=mn.addMenu(iname, iprice);
			if(flag) {
				RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
				rd.forward(request, response);
			}
			else {
				out.println("<font color=red size=18px>Failed! Invalid Details Entered<br>");
				out.println("<a href=editusers.jsp>Click here to try again</a>");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
