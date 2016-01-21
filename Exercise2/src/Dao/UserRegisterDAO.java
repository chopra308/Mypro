package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
 
public class UserRegisterDAO {
    public void insertData(String firstName, String lastName, String name,
            String email, String pass, String phone) throws Exception {
        System.out.println("jdbc connection");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost/employee", "root", "root");
 
        try {
 
            try {
                Statement st = con.createStatement();
                int value = st
                        .executeUpdate("INSERT INTO UserDetails(firstname, lastname,username,password, email, phone) "
                                + "VALUES('"
                                + firstName
                                + "','"
                                + lastName
                                + "','"
                                + name
                                + "','"
                                + pass
                                + "','"
                                + email + "','" + phone + "')");
                System.out.println("1 row affected" + value);
            } catch (SQLException ex) {
                System.out.println("SQL statement is not executed!" + ex);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

