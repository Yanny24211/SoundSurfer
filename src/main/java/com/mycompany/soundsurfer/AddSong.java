package com.mycompany.soundsurfer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;

@WebServlet("/AddSong")
public class AddSong extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String songName = request.getParameter("songName");
        String artist = request.getParameter("artist");
        int rating = Integer.parseInt(request.getParameter("rating"));

        // Create a new Song object
        Song newSong = new Song(songName, artist, rating);

        // Retrieve the list of added songs from session
        ArrayList<Song> addedSongs = (ArrayList<Song>) request.getSession().getAttribute("addedSongs");

        // If the list doesn't exist, create a new one
        if (addedSongs == null) {
            addedSongs = new ArrayList<>();
            request.getSession().setAttribute("addedSongs", addedSongs);
        }

        // Add the new song to the list
        addedSongs.add(newSong);

        // Redirect back to the library page
        response.sendRedirect("library.jsp");
    }
}
