
import com.beans.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProductInfo")
public class ProductInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();
		if (id >= ((Product[]) session.getAttribute("products")).length) {
			response.sendRedirect("/J2ee4.0/index.jsp");
		} else {
			Product product = ((Product[]) session.getAttribute("products"))[id];
			request.setAttribute("product", product);
			request.getServletContext().getRequestDispatcher("/product.jsp").include(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
