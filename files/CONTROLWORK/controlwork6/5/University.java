import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class University {

    public static void main(String[] args) {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/labwork2", "User", "toor");
            System.out.println("Opened database successfully");
            stmt = c.createStatement();
            String sql ="CREATE TABLE University( id int PRIMARY KEY ,name varchar(45), status varchar(50));";
            stmt.executeUpdate(sql);

            sql = "CREATE TABLE Department (id integer not null primary key, name varchar(50), universityId int,FOREIGN KEY(universityId) REFERENCES University(id));";
            stmt.executeUpdate(sql);
            sql = "CREATE TABLE Student (id integer not null primary key, fullname varchar(50), departmentId int,FOREIGN KEY(departmentId) REFERENCES Department(id), universityId int,FOREIGN KEY(universityId) REFERENCES University(id));;";
            stmt.executeUpdate(sql);



            stmt.close();

            stmt = c.createStatement();
            BufferedReader breader = new BufferedReader(new FileReader("university.csv"));
            String line;
            List<String> lines = new ArrayList<String>();
            while ((line = breader.readLine()) != null) {
                lines.add(line);
            }

            sql = "";
            for (String s : lines) {

                sql += (s+"\n") ;
            }
            System.out.println(sql);
            stmt.executeUpdate(sql);
            stmt.close();
            c.close();
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName()+": "+ e.getMessage() );
            System.exit(0);
        }

        System.out.println("Table created successfully");
    }
}
