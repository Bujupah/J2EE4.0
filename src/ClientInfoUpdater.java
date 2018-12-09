import com.beans.*;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ClientInfoUpdater
 */
@WebServlet("/change")
public class ClientInfoUpdater extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ClientInfoUpdater() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DatabaseManager base = new DatabaseManager();
		String name = request.getParameter("name");
		String oldPass = request.getParameter("oldpass");
		String newPass = request.getParameter("newpass");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		Client current = (Client)session.getAttribute("client");
		if (oldPass.equals(current.getPass())) {
			Client newClient = new Client();
			newClient.setName(name);
			if(newPass.length() == 0) {
				newClient.setPass(oldPass);				
			} else {
				newClient.setPass(newPass);
			}
			newClient.setPhone(Integer.parseInt(phone));
			newClient.setEmail(email);
			int res = base.editClient(newClient, current.getEmail());
			if(res == 1) {
				request.setAttribute("msg", "Changements Sauvegardés!");
				session.setAttribute("client", newClient);
				request.getServletContext().getRequestDispatcher("/setting.jsp").forward(request, response);				
			} else {
				request.setAttribute("msg", "Erreur dans la mise à jour!");
				request.getServletContext().getRequestDispatcher("/setting.jsp").forward(request, response);			
			}
		} else {
			request.setAttribute("msg", "Mot de passe Incorect!");
			request.getServletContext().getRequestDispatcher("/setting.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
