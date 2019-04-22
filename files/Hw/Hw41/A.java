import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class A {
   public static void main( String args[] ) {
      Connection c = null;
      Statement stmt = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager
            .getConnection("jdbc:postgresql://localhost:5432/testdb",
            "User", "toor");
         System.out.println("Opened database successfully");
         stmt = c.createStatement();
         String sql = "CREATE TABLE Product " +
            "(DerivativeTypeName text,"+
            "Valor int," + 
            "DerivativeISIN varchar(250)," +
            "DerivativeName varchar(250)," +
            "UnderlyingShortName varchar(250)," +
            "UnderlyingISIN varchar(250)," +
            "UnderlyingCountryISOCode varchar(250)," +
            "InvestmentClassName varchar(250)," +
            "Type varchar(10)," +
            "Style varchar(100)," +
            "UnderlyingExchangeName varchar(100)," +
            "Ratio1 numeric," +
            "Ratio2 numeric," +
            "StrikeCurrency varchar(10)," +
            "Strike numeric," +
            "Barrier numeric," +
            "BarrierType varchar(10)," +
            "BarrierReached date," +
            "FloorCurrency varchar(10)," +
            "Floor int," +
            "CapCurrency varchar(10)," +
            "Cap numeric," +
            "Issue_date date," +
            "Payment date," +
            "FinalFixing date," +
            "RedemptionDate timestamp," +
            "DerivativeIssuePrice numeric," +
            "IssueSize int," +
            "IssuerName varchar(255)," +
            "LeadManager varchar(55)," +
            "CoLeadManager varchar(250)," +
            "Cur varchar(10)," +
            "Bid numeric," +
            "Ask numeric)" ;


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