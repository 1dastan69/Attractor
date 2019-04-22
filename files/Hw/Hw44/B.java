import java.sql.*;

public class B {
	static final String jdbc_driver = "org.postgresql.Driver";
	static final String db_url = "jdbc:postgresql://localhost:5432/company";
	static final String username = "User";
	static final String password = "toor";

	public static void main(String... args) {
		Connection conn = null;
		try {
			System.out.println("Staring..");
			
			Class.forName(jdbc_driver);
			System.out.println("Driver set");
			
			conn = DriverManager.getConnection(db_url, username, password);
			System.out.println("Connection established");
			

			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			System.out.println("Statement created");

			ResultSet rs = stmt.executeQuery("SELECT * FROM main.\"Staff\" ORDER BY staff_number DESC;");

		while(rs.next()){

				int staff_number = rs.getInt("staff_number");
				String full_name = rs.getString("fullname");
				String gender = rs.getString("gender");
				Date birth_date = rs.getDate("birth_date");

				System.out.print("StaffNumber = " + staff_number);
				System.out.print(", FullName = " + full_name);
				System.out.print(", Gender = " + gender);
				System.out.print(", Bith Date = " + birth_date);
				System.out.println();

			}

			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println(e.toString());
		} finally {	
		}
		System.out.println("Opreration done!");
	}

}
