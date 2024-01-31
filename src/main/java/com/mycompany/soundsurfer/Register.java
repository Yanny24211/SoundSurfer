/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.soundsurfer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yannypatel
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter(); 
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        UserDao userDao = new UserDao(); 
        //Add error handling in case username alr exists
        User newUser = new User(username, password);
        userDao.addUser(newUser);
        out.println("Registration Successful, Redirecting to Login Page!"); //Add p tags later 
        response.sendRedirect("index.jsp");
        //request.getRequestDispatcher("index.html").forward(request, response);
    } 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

          doPost(request, response);

    }
}
