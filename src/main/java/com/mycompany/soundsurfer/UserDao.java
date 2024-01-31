/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.soundsurfer;

import java.util.ArrayList;
/**
 *
 * @author yannypatel
 */
public class UserDao {
    private static final ArrayList<User> UserList = new ArrayList<>(); 
    
    public void addUser(User user){
        UserList.add(user); 
    }
    
    public User getUser(String username){
        for(User person: UserList){
            if(person.getUsername().equals(username)){
                return UserList.get(UserList.indexOf(person));   
            }
        }
        System.out.println("User is not found");
        return null; 
    }
    
    public boolean validateUser(String username, String password){
        User user = getUser(username);
        return user != null && user.getPassword().equals(password); 
    }
}
