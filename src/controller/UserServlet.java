package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import model.User;
import tools.MD5;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserServlet() {
		super();
	}

	UserDAO ud = new UserDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String url = "";
		User u = new User();
		HttpSession session = request.getSession();
		switch(command)
		{
		case "insert":
			u.setemail(request.getParameter("email"));
			u.setusername(request.getParameter("username"));
			u.setpass(request.getParameter(("pass")));
			ud.insertUser(u);
			session.setAttribute("Users", u);
			url = "/index.jsp";
			break;
		case "login":
			u = ud.Login(request.getParameter("email"), (request.getParameter("pass")));
			if (u != null)
			{
				session.setAttribute("Users", u);
				url = "/index.jsp";
			}
			else 
			{
				request.setAttribute("Error", "Error user or password");
				url = "/login.jsp";
			}
			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
	}

}
