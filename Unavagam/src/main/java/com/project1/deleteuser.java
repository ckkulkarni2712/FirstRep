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
 * Servlet implementation class deleteuser
 */
@WebServlet("/deleteuser")
public class deleteuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Employee emp=new Employee();
		try {
			int ID=Integer.parseInt(request.getParameter("ID"));
			boolean flag=emp.delete(ID);
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
