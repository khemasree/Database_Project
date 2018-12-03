import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class myConnection {
    public static void main(String[] args) {

        // Create a variable for the connection string.
        String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=Hospital_Database;integratedSecurity=true;";

        try{
            Connection con = DriverManager.getConnection(connectionUrl); 
            Statement stmt = con.createStatement();
            String SQL = "SELECT TOP 10 * FROM dbo.Employee";
            ResultSet rs = stmt.executeQuery(SQL);

            // Iterate through the data in the result set and display it.
            while (rs.next()) {
                System.out.println(rs.getString("fname") + " " + rs.getString("lname"));
            }
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}