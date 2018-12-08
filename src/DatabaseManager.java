import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;
public class DatabaseManager {
	private Connection connection;
	private void LoadDatabase() { // basic shit to connect to the database
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			e.getMessage();
		}
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jee", "root", "");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	public void AddClient(String nom,String password, int phone,String email,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException { // adding a client to the database
		LoadDatabase();
		try {
			PreparedStatement preStatement = connection.prepareStatement("INSERT INTO client VALUES(?,?,?,?)");
			preStatement.setString(1, nom);
			preStatement.setString(2, password);
			preStatement.setLong(3, phone);
			preStatement.setString(4, email);
			preStatement.executeUpdate();
		}catch(SQLException e) {
			request.setAttribute("error", "Ce compte existe déja");
			request.getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
		}
	}
	
	public boolean TestClient(String email,String password) throws SQLException { // testing if authenticated or no, returns true when its true XD
		ResultSet result = null;
		LoadDatabase();
		try {
			PreparedStatement preStatement = connection.prepareStatement("SELECT * FROM client WHERE email=? AND password=?");
			preStatement.setString(1, email);
			preStatement.setString(2, password);
			result = preStatement.executeQuery();
		}catch(SQLException e) {
			e.printStackTrace();
		}
			return result.next()?true:false;
	}
	public void getProducts() {
		// Force it when u gonna display informations to the site !
	}
}
