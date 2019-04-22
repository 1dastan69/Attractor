import java.sql.*;

public class C {
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

			String callSql = "{? = call main.\"summa\"(?, ?)}";

			CallableStatement stmt = conn.prepareCall(callSql);
			System.out.println("Statement created");
			
			stmt.registerOutParameter(1, Types.INTEGER);
			stmt.setInt(2, 7);
			stmt.setInt(3, 4);

			stmt.execute();

			int res = stmt.getInt(1);
			
			System.out.println("Result is: " + res);

			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println(e.toString());
		} finally {	
		}
	}
}