package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DonutDAO;

@WebServlet("/Admin/Delete")
public class AdminDelete extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		if(id != null) {
			DonutDAO dao=new DonutDAO();
			dao.deleteOne(Integer.parseInt(id));
		}
		response.sendRedirect("/donutsshopapp/Admin");
	}
}