import java.sql.*;


public class B{
    static final String jdbc_driver = "org.postgresql.Driver";
    static final String db_url = "jdbc:postgresql://localhost:5432/labaratorlesson40";
    static final String User = "User";
    static final String pass = "toor";

        public static void main(String[] args) {


        Connection connection = null;
        PreparedStatement statement = null;

       try{
        Class.forName(jdbc_driver);
        System.out.println("connect to db");
        connection = DriverManager.getConnection(db_url, User, pass);


        String SQL = "insert into Main.\"Staff\"(staff_number, fullname, gender, company_number)" + "values(?, ?, ?, ?)";

        System.out.println("creating statemnet");
        statement = connection.prepareStatement(SQL);
        connection.setAutoCommit(false);
        printRows(statement);


        statement.setInt(1,123);
        statement.setString(2,"PAPU");
        statement.setString(3, "Dragon");
        statement.setInt(4, 1);

        statement.addBatch();

        statement.setInt(1,126);
        statement.setString(2,"ZAPU");
        statement.setString(3, "Zragon");
        statement.setInt(4, 2);

        statement.addBatch();

        int[] count = statement.executeBatch();

        connection.commit();

        printRows(statement);

        statement.close();
        connection.close();

       }catch(Exception e){
        e.printStackTrace();

       }finally{
        try{

            if(statement!=null);
            statement.close();

        }catch(SQLException se2){

        }
        try{
            if(connection!=null);
            connection.close();

        }catch(SQLException se){
            se.printStackTrace();
        }
       }
       System.out.println("Poka");
   }

       public static void printRows(Statement statement) throws SQLException {
           System.out.println("Dar");

           String sql = "Select staff_number, fullname, gender, company_number from Main.\"Staff\"";

           ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                int staff_number = rs.getInt("staff_number");
                String fullname = rs.getString("fullname");
                String gender = rs.getString("gender");
                int company_number = rs.getInt("company_number");

                System.out.println("\n====================");
                System.out.println("staff_number: " + staff_number);
                System.out.println("Fullname: " + fullname);
                System.out.println("gender: " + gender);
                System.out.println("company_number : " + company_number);
                System.out.println("====================\n");
            }

            System.out.println();
            rs.close();
       }

}


