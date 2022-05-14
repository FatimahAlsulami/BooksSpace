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
		 // insert to user table user info 
		 sqlQuery = "insert into users_info (Fname, Lname, Email, Pass, user_ID, user_role) values(?,?,?,?,?,?)";
		    try{
		    	if(connection == null)
		    		System.out.println("Hi");
		    	 // using PreparedStatement to prevent SQLI  
		      preparedStmt = connection.prepareStatement(sqlQuery);
		      preparedStmt.setString(4, password);
		      preparedStmt.setString(1, fName);
		      preparedStmt.setString(2, lName);
		      preparedStmt.setString(3, Email);
		      preparedStmt.setString(5, String.valueOf(ID));
		      preparedStmt.setString(6, "user");
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
		 // return ID and Pass from user table to check validity if authorized user or no ? 
		 public ResultSet getUser(String Fname,String Lname, String Pass) throws NumberFormatException {
			    sqlQuery = "SELECT * FROM users_info WHERE Fname= ? and user_ID=? and Pass=?";
			    try{
			      preparedStmt = connection.prepareStatement(sqlQuery);
			      preparedStmt.setString(1,Fname);
			      preparedStmt.setString(2,Lname);
			      preparedStmt.setString(3,Pass);
			      
			      // using resultset to execute sql query 
			      resultSet = preparedStmt.executeQuery();
			      user = Integer.parseInt(Lname);
			    }catch(SQLException e){
			      System.out.println(e);
			    }
			    return resultSet;
			  }
		 // method to add book information in book table in database 
		 public boolean addBook(String user_ID, String BName, String AName, String Categ, String price) {

			 sqlQuery = "insert into books_info (Book_Name, Book_Author, Book_category, Book_Price, user_ID) values(?,?,?,?,?)";
			    try{
			    	if(connection == null)
			    		System.out.println("Hi");
			      preparedStmt = connection.prepareStatement(sqlQuery);
			      preparedStmt.setString(1, BName);
			      preparedStmt.setString(2, AName);
			      preparedStmt.setString(3, Categ);
			      preparedStmt.setString(4, price);
			      preparedStmt.setString(5, user_ID);
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
		 // method to add request of books and state of request , there is three type of request state(Waiting, Accepted , Rejected)
		 public boolean addRequest(String BName, String AName, String Categ, String price) {
			 sqlQuery = "insert into requests (Book_Name, Book_Auther, Book_Category, Price, user_ID, Request_State) values(?,?,?,?,?,?)";
			 try{
			    	if(connection == null)
			    		System.out.println("Hi");
			      preparedStmt = connection.prepareStatement(sqlQuery);
			      preparedStmt.setString(1, BName);
			      preparedStmt.setString(2, AName);
			      preparedStmt.setString(3, Categ);
			      preparedStmt.setString(4, price);
			      preparedStmt.setString(5, String.valueOf(getID()));
			      preparedStmt.setString(6, "Waiting");
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
		 
		 // show books> this method to return all books info 
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
		 public ResultSet getMyRequests() {
			 String id = String.valueOf(getID());
			    sqlQuery = "SELECT * FROM requests WHERE user_ID='"+id+"';";
			    try {
			     preparedStmt = connection.prepareStatement(sqlQuery);
			     resultSet = preparedStmt.executeQuery();
			    } catch (SQLException e) {
			    	System.out.println(e.getMessage());	
			    }
			    return resultSet;
			   }
		 
		 //Admin side
		 //get requested
		 public ResultSet getRequests() {
			    sqlQuery = "SELECT * FROM requests WHERE Request_State='Waiting';";
			    try {
			     preparedStmt = connection.prepareStatement(sqlQuery);
			     resultSet = preparedStmt.executeQuery();
			    } catch (SQLException e) {
			    	System.out.println(e.getMessage());	
			    }
			    return resultSet;
			   }
		 public int rejectBook(String Book_ID) {
			 
			 sqlQuery = "Update requests set Request_State=? WHERE Book_ID = " + Book_ID;
			 int i=0;
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setString(1,"Reject");
			 i = preparedStmt.executeUpdate();
			 }
			 catch(SQLException e){
			 System.out.print(e);
			 e.printStackTrace();
			 }

			 return i;
		 }
        public int acceptBook(String Book_ID) {
			 
			 sqlQuery = "Update requests set Request_State=? WHERE Book_ID = " + Book_ID;
			 int i=0;
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setString(1,"Accept");
			 i = preparedStmt.executeUpdate();
			 }
			 catch(SQLException e){
			 System.out.print(e);
			 e.printStackTrace();
			 }

			 return i;
		 }
        public ResultSet getBookRequest(String Book_ID) {
			 sqlQuery = "SELECT * FROM requests WHERE Book_ID= ? ";
			 try{
			 preparedStmt = connection.prepareStatement(sqlQuery);
			 preparedStmt.setString(1, Book_ID);
			 resultSet = preparedStmt.executeQuery();

			 }catch(SQLException e){
			 System.out.println(e);
			 }
			 return resultSet;
			 }
        //add book to books_info relation
		 public int transfer(ResultSet result) {
			 
			  if(result==null){
				  System.out.println("Object at connections line 204 is null");
			         System.out.print("error");  
			 }else {
				 String user_ID;
				try {
					result.next();
					user_ID = result.getNString("User_ID");
				 String BName = result.getNString("Book_Name");//request.getParameter("Book_Name");
				 String AName = result.getNString("Book_Auther");
				 String Categ = result.getNString("Book_Category");
				 String price = result.getNString("Price");
				 boolean isAdded = addBook(user_ID, BName, AName, Categ, price);
				  if(isAdded) {
				    return 1;}
				  else if(!isAdded) {
				    return 0;}
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.print(e.getMessage());
				}
			 }
			return 0;	  
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
