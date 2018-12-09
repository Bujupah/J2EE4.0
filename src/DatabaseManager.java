import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.beans.*;

public class DatabaseManager {
	public Connection connection;
	public void LoadDatabase() { // basic shit to connect to the database
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
			PreparedStatement preStatement = connection.prepareStatement("INSERT INTO client(name, password, phone, email) VALUES(?,?,?,?)");
			preStatement.setString(1, nom);
			preStatement.setString(2, password);
			preStatement.setLong(3, phone);
			preStatement.setString(4, email);
			preStatement.executeUpdate();
		
	}
	
	public String[] TestClient(String email,String password) throws SQLException { // testing if authenticated or no, returns true when its true XD
		ResultSet result = null;
		LoadDatabase();
		String client[] = new String[4];
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
				client[3] = result.getString("password");
		      }
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
			return client;
	}
	
	public int editClient(Client c, String oldemail) {
		LoadDatabase();
		try {
			PreparedStatement preStatement = connection.prepareStatement("update client set name=?, password=?, email=?, phone=? where email=?");
			preStatement.setString(1, c.getName());
			preStatement.setString(2, c.getPass());
			preStatement.setString(3, c.getEmail());
			preStatement.setInt(4, c.getPhone());
			preStatement.setString(5, oldemail);
			return preStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
	}
	public Product[] getProducts() {
		Product[] products;
		int numberOfProducts = 0;
		LoadDatabase();
		try {
			PreparedStatement preStatement = connection.prepareStatement("SELECT count(*) as nb FROM product");
			ResultSet result = preStatement.executeQuery();
			while (result.next()) {
				numberOfProducts = result.getInt("nb");
			}
			products = new Product[numberOfProducts];
			Statement sttmt = connection.createStatement();
			ResultSet fetchedResult = sttmt.executeQuery("SELECT * from product");
			int i = 0;
			while (fetchedResult.next()) {
				Product pr = new Product();
				pr.setName(fetchedResult.getString(2));
				pr.setPrice(fetchedResult.getInt(3));
				pr.setDescription(fetchedResult.getString(4));
				pr.setQuantity(fetchedResult.getInt(5));
				pr.setImage(fetchedResult.getBlob(6));
				products[i] = pr;
				i++;
			}
			return products;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
