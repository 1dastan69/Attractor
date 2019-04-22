import java.sql.*;

public class B {
	static final String jdbc_driver = "org.postgresql.Driver";
	static final String db_url = "jdbc:postgresql://localhost:5432/company";
	static final String username = "postgres";
	static final String password = "AAAbbb123";

	public static void main(String... args) {
		Connection conn = null;
		try {
			System.out.println("Staring..");
			
			Class.forName(jdbc_driver);
			System.out.println("Driver set");
			
			conn = DriverManager.getConnection(db_url, username, password);
			System.out.println("Connection established");

			//Thread.sleep(20000);

			String selectSql = "select * from main.\"Staff\" where "
			 				+ " staff_number <= ? and full_name = ? "
			 				+ " order by staff_number";

			PreparedStatement stmt = conn.prepareStatement(selectSql);
			System.out.println("Statement created");
			
			stmt.setInt(1, 7);
			stmt.setString(2, "Mother Teresa");

			ResultSet rs = stmt.executeQuery();
			System.out.println(rs);

			while(rs.next()){
				//Retrieve by column name
				int staff_number = rs.getInt("staff_number");
				String full_name = rs.getString("full_name");
				String gender = rs.getString("gender");

				//Display values
				System.out.print("StaffNumber: " + staff_number);
				System.out.print(", FullName: " + full_name);
				System.out.println(", Gender: " + gender);
			}

			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println(e.toString());
		} finally {	
		}
	}
}