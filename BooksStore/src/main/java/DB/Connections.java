package DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Connections {
	public static int user ;
	String URL = "jdbc:mysql://localhost:3306/booksspace_db";
	String USERNAME= "BooksSpace"; // use your username of Mysql server
	String PASSWORD ="Cpit1234"; // use your password of Mysql server
	Connection connection = null;
	String sqlQuery = "";
	PreparedStatement preparedStmt = null;
	ResultSet resultSet = null;
	int ID = 26357;
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
	public static int getID() {
		return user;
	}
		 public boolean addUser(String fName, String lName, String Email, String password) {
		 ID = ID + (int)(Math.random()*100);
		 user = ID;
		 sqlQuery = "insert into users_info (Fname, Lname, Email, Pass, user_ID) values(?,?,?,?,?)";
		    try{
		    	if(connection == null)
		    		System.out.println("Hi");
		      preparedStmt = connection.prepareStatement(sqlQuery);
		      preparedStmt.setString(4, password);
		      preparedStmt.setString(1, fName);
		      preparedStmt.setString(2, lName);
		      preparedStmt.setString(3, Email);
		      preparedStmt.setString(5, String.valueOf(ID));
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
		 public ResultSet getUser(String Fname,String Lname, String Pass) throws NumberFormatException {
			    sqlQuery = "SELECT * FROM users_info WHERE Fname= ? and user_ID=? and Pass=?";
			    try{
			      preparedStmt = connection.prepareStatement(sqlQuery);
			      preparedStmt.setString(1,Fname);
			      preparedStmt.setString(2,Lname);
			      preparedStmt.setString(3,Pass);
			      
			      resultSet = preparedStmt.executeQuery();
			      user = Integer.parseInt(Lname);
			    }catch(SQLException e){
			      System.out.println(e);
			    }
			    return resultSet;
			  }
		 public boolean addBook(String BName, String AName, String Categ, String price) {

			 sqlQuery = "insert into books_info (Book_Name, Book_Author, Book_category, Book_Price, user_ID) values(?,?,?,?,?)";
			    try{
			    	if(connection == null)
			    		System.out.println("Hi");
			      preparedStmt = connection.prepareStatement(sqlQuery);
			      preparedStmt.setString(1, BName);
			      preparedStmt.setString(2, AName);
			      preparedStmt.setString(3, Categ);
			      preparedStmt.setString(4, price);
			      preparedStmt.setString(5, String.valueOf(user));
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
		 
		 // show books
		 public ResultSet getBooks() {
			    sqlQuery = "SELECT * FROM books_info;";
			    try {
			     preparedStmt = connection.prepareStatement(sqlQuery);
			     resultSet = preparedStmt.executeQuery();
			    } catch (SQLException e) {
			    	System.out.println(e.getMessage());	
			    }
			    return resultSet;
			   }
		 public ResultSet getBook(String name, String author) {
			 sqlQuery = "SELECT * FROM books_info WHERE Book_Name= ? and  Book_Author= ? and user_ID= ?";
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setString(1, name);
			 preparedStmt.setString(2, author);
			 preparedStmt.setString(3, String.valueOf(user));
			 resultSet = preparedStmt.executeQuery();

			 }catch(SQLException e){
			 System.out.println(e);
			 }
			 return resultSet;
			 }
		 // delete book
		//DELETE Book// 
		 public int deleteBook(int bookID) {
			 sqlQuery = "Delete from books_info  WHERE Book_ID = ? ";
			 int i=0; 
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setInt(1, bookID);
			 i = preparedStmt.executeUpdate();
			 }
			 catch(SQLException e){
			 System.out.print(e);
			 e.printStackTrace();
			 }

			 return i;
			 }
		 
		 public void close(){
			 try {
			 connection.close();
			 } catch (SQLException ex) {
			 Logger.getLogger(Connections.class.getName()).log(Level.SEVERE,
			null, ex);
			 }
			}
}
