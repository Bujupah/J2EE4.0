import com.beans.*;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.*;
public class MainTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*Client a = new Client();
		a.setName("aaa");
		a.setEmail("adziajdzpij");
		a.setPhone(21545848);
		
		System.err.println(a.getPhone());*/
		DatabaseManager db = new DatabaseManager();
		Product [] products = db.getProducts();
		Blob test = products[0].getImage();
		try {
			String x = Base64.getEncoder().encodeToString(test.getBytes(0, (int) test.length()));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
