/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.soundsurfer;

import java.util.ArrayList;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet;
/**
 *
 * @author yannypatel
 */
public class UserDao {
    private static Connection getCon(){
        Connection con = null; 
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/soundsurfer?autoReconnect=true&useSSL=false", "root", "student123");
            System.out.println("Connection Established");
        }
        catch(Exception e){System.out.println("Connection Failed: " + e);} 
        return con;
    }
    
    public void addUser(User user){
        String uname = user.getUsername(); 
        String pass = user.getPassword(); 
        try{
            
            Connection con = getCon(); 
            String userQ = "insert into theUser(user_id, username, date_of_birth, password) values (null, \"" + uname + "\", null, \"" + pass + "\")"; 
            PreparedStatement  ps = con.prepareStatement(userQ); 
            System.out.print(userQ);
            int rowsAffected = ps.executeUpdate();
            System.out.print("# of Rows: " + rowsAffected);
            if(rowsAffected > 0){
                 System.out.println("Rows added"); 
            }
            else{
                System.out.println("Rows not added"); 
            }
            con.close();
        }
        catch(Exception e){System.out.println(e);}
 
    }
    
    public User getUser(String username){  
        User person = null;
        try{
            Connection con = getCon(); 
            String userQ = "select * from theUser where username like \"" + username + "\""; 
            //System.out.println(userQ); 
            PreparedStatement ps = con.prepareStatement(userQ); 

            try(ResultSet rs = ps.executeQuery()){
                //System.out.println("Statement: " + rs);
                //Try printing result set
                
                while(rs.next()){
                    String user_id = rs.getString("user_id");
                    String user = rs.getString("username"); 
                    String dob = rs.getString("date_of_birth");
                    String pass = rs.getString("password");
                    System.out.println("User: " + user);
                    System.out.println("Pass: " + pass);
                    person = new User(user, pass);
                }
                con.close();   
            }
            catch(Exception e){System.out.println("RS: "+ e);}
            
        }
        catch(Exception e){System.out.println("User Retrieval Failed: " + e);}
        return person; 
    }
    
    public boolean validateUser(String username, String password){
        User user = getUser(username);
        return user != null && user.getPassword().equals(password); 
    }
}