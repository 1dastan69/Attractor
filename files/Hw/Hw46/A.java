import java.sql.*;


public class A{
    static final String jdbc_driver = "org.postgresql.Driver";
    static final String db_url = "jdbc:postgresql://localhost:5432/labaratorlesson40";
    static final String User = "User";
    static final String pass = "toor";

    public static void main(String[] args) throws ClassNotFoundException, SQLException{
        Connection connection = null;
        Statement statement = null;

        Class.forName(jdbc_driver);
        connection = DriverManager.getConnection(db_url, User, pass);
        connection.setAutoCommit(false);
        statement = connection.createStatement();

        String SQL = "select * from Main.\"Staff\"";
        ResultSet resultSet = statement.executeQuery(SQL);


        System.out.println("Staff's table: ");
        while(resultSet.next()){

            int staff_number = resultSet.getInt("staff_number");
            String fullname = resultSet.getString("fullname");

            if (fullname==null){
                System.out.println("Table is empty. ");
                break;

            }

            String gender = resultSet.getString("gender");
            int company_number = resultSet.getInt("company_number");

            System.out.println("\n========================");
            System.out.println("staff_number " + staff_number);
            System.out.println("fullname " + fullname);
            System.out.println("gender " + gender);
            System.out.println("company_number " + company_number);
            System.out.println("========================\n");
        }

        /*SQL = "INSERT INTO Main.\"Main\" VALUES (1, 'Proselyte', 'Java', 3000)";
        statement.addBatch(SQL);

        SQL = "INSERT INTO Main.\"Main\" VALUES (2, 'AsyaSmile', 'UI/UX', 2500)";
        statement.addBatch(SQL);

        SQL = "INSERT INTO Main.\"Main\" VALUES (3, 'Peter', 'C++', 3000)";
        statement.addBatch(SQL);*/

        try {


            statement.executeBatch();
            connection.commit();

            SQL = "SELECT * FROM Main.\"Staff\"";
            resultSet = statement.executeQuery(SQL);

            System.out.println("Final developer's table content:");
            while (resultSet.next()) {
                int staff_number = resultSet.getInt("staff_number");
                String fullname = resultSet.getString("fullname");
                String gender = resultSet.getString("gender");
                int company_number = resultSet.getInt("company_number");

                System.out.println("\n====================");
                System.out.println("staff_number: " + staff_number);
                System.out.println("Fullname: " + fullname);
                System.out.println("gender: " + gender);
                System.out.println("company_number : " + company_number);
                System.out.println("====================\n");
            }

            resultSet.close();
            statement.close();
            connection.close();
        }finally {
            if (statement != null) {
                statement.close();
            }

            if (connection != null) {
                connection.close();
            }
        }

        System.out.println("Thank You.");
    }
}


