import java.sql.*;

public class List {
    static final String jdbc_driver = "org.postgresql.Driver";
    static final String db_url = "jdbc:postgresql://localhost:5432/labwork2";
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

            String selectSql = "select * from Public.\"File\" ";
            ResultSet rs = stmt.executeQuery(selectSql);


            while(rs.next()){
                //Retrieve by column name
                 int id = rs.getInt("id");
                 String filename = rs.getString("filename");
                 String path = rs.getString("path");
                 int size = rs.getInt("size");
                 String type = rs.getString("type");

               // Display values
                System.out.print("id: " + id);
                System.out.print(", filename: " + filename);
                System.out.print(", path: " + path);
                System.out.print(", size: " + size);
                System.out.println(", type: " + type);
            }

            stmt.close();
            conn.close();
        } catch(Exception e) {
            System.out.println(e.toString());
        } finally {
        }
    }
}
