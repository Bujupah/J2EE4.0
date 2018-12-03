import java.sql.*;
public class DatabaseManager {
	private Connection connection;
	private void LoadDatabase() {
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
	public void AddClient(String nom,String password, int phone,String email) {
		LoadDatabase();
		try {
			PreparedStatement preStatement = connection.prepareStatement("INSERT INTO client VALUES(?,?,?,?)");
			preStatement.setString(1, nom);
			preStatement.setString(2, password);
			preStatement.setInt(3, phone);
			preStatement.setString(4, email);
			preStatement.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean TestClient(String email,String password) throws SQLException {
		Statement statement=null;
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
			return result.first()?true:false;
	}
}
