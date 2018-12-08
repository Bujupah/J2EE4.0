import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.beans.Client;
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
	public void AddClient(String nom,String password, int phone,String email) throws ServletException, IOException, SQLException { // adding a client to the database
		LoadDatabase();
			PreparedStatement preStatement = connection.prepareStatement("INSERT INTO client VALUES(?,?,?,?)");
			preStatement.setString(1, nom);
			preStatement.setString(2, password);
			preStatement.setLong(3, phone);
			preStatement.setString(4, email);
			preStatement.executeUpdate();
		
	}
	
	public String[] TestClient(String email,String password) throws SQLException { // testing if authenticated or no, returns true when its true XD
		ResultSet result = null;
		LoadDatabase();
		String client[] = new String[3];
		try {
			PreparedStatement preStatement = connection.prepareStatement("SELECT * FROM client WHERE email=? AND password=?");
			preStatement.setString(1, email);
			preStatement.setString(2, password);
			result = preStatement.executeQuery();
			while (result.next())
		      {
				client[0] = result.getString("name");
				client[1] = result.getString("phone");
				client[2] = result.getString("email");
		      }
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
			return client;
	}
	
	public void editClient(Client c) {
		LoadDatabase();
	}
	public void getProducts() {
		// Force it when u gonna display informations to the site !
	}
}
