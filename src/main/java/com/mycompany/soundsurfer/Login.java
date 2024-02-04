package com.mycompany.soundsurfer;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author student
 */
@WebServlet("/Login")
//@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

   @Override 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        
        String username=(String) request.getParameter("username");
        String password=(String) request.getParameter("password");
        
//        UserDao userDao = new UserDao(); 
//        userDao.validateUser(username, password)
//        User user = userDao.getUser(username); 
          User admin = new User("admin", "admim"); 
          admin.setNumSongs(30); 
          admin.setNumArtists(35); 
          admin.setFavGenre("Classical"); 
          admin.setFavArtist("Beethoven"); 
          admin.setFavSong("Fur Elise");
        
        if (username.equals("admin")&&password.equals("admin")){
            //request.getSession().setAttribute("user", user);
            request.getSession().setAttribute("user", admin);
            
            out.println("Login Successful!");
            RequestDispatcher rd= request.getRequestDispatcher("stats.jsp");
            rd.forward(request, response);
            //response.sendRedirect("stats.jsp"); 
        }
        else{
            //out.println("Login unsuccessful, Please try again!");    
            response.sendRedirect("index.jsp");
//            RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
            
        }
        
        
     
    }
    
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

              doPost(request, response);


        }

}
