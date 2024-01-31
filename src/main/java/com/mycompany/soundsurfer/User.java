/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.soundsurfer;

public class User{
    private String username;
    private String password; 
    
    public User(String user, String pass){
        username = user; 
        password = pass; 
    }
    
    public String getUsername(){
        return this.username; 
    }
    
    public void setUsername(String name){
        username = name; 
    }
  
    public String getPassword(){
        return this.password; 
    }
    
    public void setPassword(String pass){   
        password = pass; 
    }
}