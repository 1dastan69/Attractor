import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class B {
   public static void main(String args[]) {
      Connection c = null;
      Statement stmt = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager
            .getConnection("jdbc:postgresql://localhost:5432/testdb",
            "User", "toor");
         c.setAutoCommit(false);
         System.out.println("Opened database successfully");
         stmt = c.createStatement();

         String sql = "INSERT INTO Product (DerivativeTypeName) "  
            + "VALUES (Callable Multi Defender VONTIS);";
         stmt.executeUpdate(sql);

        
         stmt.executeUpdate(sql);
         stmt.close();
         c.commit();
         c.close();
      } catch (Exception e) {
         System.err.println( e.getClass().getName()+": "+ e.getMessage() );
         System.exit(0);
      }
      System.out.println("Records created successfully");
   }
}