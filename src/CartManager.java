

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.*;

@WebServlet("/addToCart")
public class CartManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CartManager() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Product product = (Product)session.getAttribute("product");
		Client client = (Client)session.getAttribute("client");
		if (product == null || client == null) {
			response.sendRedirect("/J2ee4.0/");
		}
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		client.addToCart(product, quantity);
		session.setAttribute("client", client);
		response.sendRedirect("/J2ee4.0/product.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
