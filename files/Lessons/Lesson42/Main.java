import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Main {

    public static void main(String[] args) {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/study_db", "User", "toor");
            System.out.println("Opened database successfully");
            stmt = c.createStatement();
            String sql ="CREATE TABLE brands( id serial PRIMARY KEY ,brand varchar(45));";
            stmt.executeUpdate(sql);

            sql = "CREATE TABLE categories (id serial PRIMARY KEY ,category varchar(45) , description varchar(100));";
            stmt.executeUpdate(sql);
            sql = "CREATE TABLE suppliers (id serial PRIMARY KEY,supplier VARCHAR(50),address VARCHAR(50),contacts VARCHAR(50));";
            stmt.executeUpdate(sql);

            sql = "CREATE TABLE products (id serial PRIMARY KEY,product varchar(45), price decimal ,description varchar(100),category_id INT REFERENCES categories (id), brand_id INT REFERENCES brands (id) );";
            stmt.executeUpdate(sql);

            sql = "CREATE TABLE actions (id serial PRIMARY KEY,action_date timestamp,product_id int REFERENCES products (id), supplier_id int REFERENCES suppliers (id),qty decimal , price decimal );";
            stmt.executeUpdate(sql);

            stmt.close();

            stmt = c.createStatement();
            BufferedReader breader = new BufferedReader(new FileReader("study_database_insert_records.sql"));
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
