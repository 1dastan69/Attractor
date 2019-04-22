import java.sql.*;

public class B {
    static final String jdbc_driver = "org.postgresql.Driver";
    static final String db_url = "jdbc:postgresql://localhost:5432/LabWork2";
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

            Statement stmt = conn.createStatement();
            System.out.println("Statement created");

            String selectSql = "select staff_number from Main.\"Staff\"  where staff_number = '1'";
            ResultSet rs = stmt.executeQuery(selectSql);


            stmt.close();
            conn.close();
        } catch(Exception e) {
            System.out.println(e.toString());
        } finally {
        }
    }
}
