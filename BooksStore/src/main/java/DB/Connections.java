package DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Connections {
	String URL = "jdbc:mysql://localhost:3306/booksspace_db";
	String USERNAME= "BooksSpace"; // use your username of Mysql server
	String PASSWORD ="Cpit1234"; // use your password of Mysql server
	Connection connection = null;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	
	public Connections(){
		 try{
		    Class.forName("com.mysql.jdbc.Driver");
		    connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		 }catch(SQLException e){
			//try page of error 
			 System.out.println("gL");
		 } catch (ClassNotFoundException ex) {
			//try page of error
			 System.out.println("dfL");
		    Logger.getLogger(Connections.class.getName()).log(Level.SEVERE, null, ex);
		 }
	}
	
		 public boolean addUser(String fName, String lName, String Email, String password) {

		 sqlQuery = "insert into users_info (Fname, Lname, Email, Pass) values(?,?,?,?)";
		    try{
		    	if(connection == null)
		    		System.out.println("Hi");
		      preparedStmt = connection.prepareStatement(sqlQuery);
		      preparedStmt.setString(1, password);
		      preparedStmt.setString(2, fName);
		      preparedStmt.setString(3, lName);
		      preparedStmt.setString(4, Email);
		      preparedStmt.executeUpdate();
		    }catch(SQLException e){
		      System.out.println("SQL");
		      System.out.println(e.getMessage());
		      return false;
		    }catch(Exception e){
		      e.printStackTrace();
		      System.out.println("Ex");
		      return false;
		    }
		      return true;
		    } 
}
