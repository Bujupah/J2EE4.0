

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.beans.*;

/**
 * Servlet implementation class ServletConnector
 */
public class ServletConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletConnector() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseManager base = new DatabaseManager();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if((email.isEmpty())&&(password.isEmpty())) {
			
		}else {
			HttpSession session = request.getSession();
			try {
				String[] client = base.TestClient(email, password);
				Client c = new Client();
				c.setName(client[0]);
				c.setPhone(Integer.parseInt(client[1]));
				c.setEmail(client[2]);
				c.setPass(client[3]);
				session.setAttribute("client", c);
				Product products[] = base.getProducts();
				session.setAttribute("products", products);
				response.sendRedirect("index.jsp");
			} catch (NumberFormatException | SQLException e) {
				// TODO Auto-generated catch block
				session.setAttribute("error", "Mauvaise combinaison!");
				response.sendRedirect("login.jsp");
	
			}
		}
		
	}

}
