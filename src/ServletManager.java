import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServletManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ServletManager() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DatabaseManager base = new DatabaseManager();
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		if(password.equals(repassword)) {
			try {
				base.AddClient(name,password,Integer.parseInt(phone), email);
				session.setAttribute("error", null);
				response.sendRedirect("login.jsp");
			} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				session.setAttribute("error", "Ce compte existe déja");
				response.sendRedirect("signup.jsp");
			}
		}else {
			request.setAttribute("error", "Les deux mots de passes doivent être identiques!");
			request.getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
		}
		
		
	}

}
