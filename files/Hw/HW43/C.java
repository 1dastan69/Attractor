import java.sql.*;

public class C {
    static final String jdbc_driver = "org.postgresql.Driver";
    static final String db_url = "jdbc:postgresql://localhost:5432/labaratorlesson40";
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

            String selectSql = "select * from Main.\"Staff\"";
            ResultSet rs = stmt.executeQuery(selectSql);


            while(rs.next()){
                //Retrieve by column name
                int staff_number = rs.getInt("staff_number");
                String full_name = rs.getString("fullname");
                // String gender = rs.getString("gender");
                // String date = rs.getString("date");
                // String company_number = rs.getString("company_number");

                //Display values
                System.out.print("StaffNumber: " + staff_number);
                System.out.print(", FullName: " + full_name);
                System.out.println();
            //     System.out.print(", birth_date: " + date);
            //     System.out.print(", Gender: " + gender);
            //     System.out.println(", company_number: " + company_number);
            }

            stmt.close();
            conn.close();
        } catch(Exception e) {
            System.out.println(e.toString());
        } finally {
        }
    }
}
