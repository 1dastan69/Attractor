import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
public class SecondSelect {
   public static void main(String args[]) {
      Connection c = null;
      Statement stmt = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager
            .getConnection("jdbc:postgresql://localhost:5432/study_db",
            "User", "toor");
         c.setAutoCommit(false);
         stmt = c.createStatement();
         ResultSet rs = stmt.executeQuery("SELECT brand, sum (qty*a.price) as total_amount " +
                                          "from categories a " +
                                          "join products p on p.id = a.categories_id "+
                                          "join brands b on b.id = p.brand_id "+
                                          "group by b.brand;");
         while (rs.next())
                     {
                        String brand = rs.getString("brand");
                        System.out.println( "brand = " + brand);

                        String sum = rs.getString("total_amount");
                        System.out.println( "total_sum = " + sum);
                        System.out.println();
                     }

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
