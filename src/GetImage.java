
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class GetImage
 */
@WebServlet("/GetImage")
public class GetImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetImage() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		byte[] imgData = null;
		Blob image = null;
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			DatabaseManager db = new DatabaseManager();
			db.LoadDatabase();
			PreparedStatement ps;
			ps = db.connection.prepareStatement("SELECT productImage FROM product WHERE productID = ?");
			ps.setInt(1, id);
			ResultSet rsSuper = ps.executeQuery();
			if (rsSuper.next()) {
				image = rsSuper.getBlob(1);
				imgData = image.getBytes(1, (int) image.length());
				response.setContentType("image/gif");
				OutputStream o = response.getOutputStream();
				o.write(imgData); // even here we got the same as below.
				o.flush();
				o.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
