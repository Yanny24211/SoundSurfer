<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.soundsurfer.Song"%>
<%@page import="com.mycompany.soundsurfer.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soundsurfer/library</title>
    <link rel="stylesheet" href="librarystyles.css">
</head>
<body>
    <% 
        User user = (User) session.getAttribute("user");
        if(user ==null){
            response.sendRedirect("index.jsp");
        }
    %>
    <div class="top-bar">
        <img src="resources/tracklibraryicon.png" alt="libraryicon" class="libraryicon">
        <div class="main-heading">
            <h1>Track Management Library</h1>
        </div>
        <div class="buttons">
            <button class="button-style-header-special" onclick="showAddSongForm()">Add Song</button>
            <!--<button class="button-style-header">Delete Song</button>-->
        </div>
    </div>

    <div id="addSongForm" style="display: none;">
        <form action="AddSong" method="post">
            <div class="formDirection">
                <label for="songName">Song Name:</label>
                <input type="text" id="songName" name="songName" required><br>

                <label for="artist">Artist:</label>
                <input type="text" id="artist" name="artist" required><br>

                <label for="rating">Rating:</label>
                <input type="number" id="rating" name="rating" min="1" max="5" required><br>
            </div>
            <input type="submit" value="Confirm">
        </form>
    </div>

    <div id="addedSongs" class="songListHeader">
        <h2>Added Songs:</h2>
        <ul>
            <%
                ArrayList<Song> addedSongs = (ArrayList<Song>)session.getAttribute("addedSongs");
                if(addedSongs != null) {
                    for(int i = 0; i < addedSongs.size(); i++) {
                        Song song = addedSongs.get(i);
            %>
                <li>
                    <%= song.getTitle() %> - <%= song.getArtist() %> (Rating: <%= song.getRating() %>)
                    <form action="DeleteSong" method="post" style="display:inline;">
                        <input type="hidden" name="songIndex" value="<%= i %>"> <!-- Pass index instead of id -->
                        <input type="submit" value="Delete">
                    </form>
                </li>
            <%
                    }
                }
            %>
        </ul>
    </div>

    <footer>
        <p>Developed by Deep Patel and Yanny Patel</p>
        <div class="footer-buttons">
            <a href="discover.jsp"><button class="button-style-footer">Discover</button></a>
            <a href="library.jsp"><button class="button-style-footer">Track Library</button></a>
            <a href="stats.jsp"><button class="button-style-footer">My Statistics</button></a>
            <form action="Logout" method="get" class="lgout"><input type="submit" value="Logout" class="button-style-logout"></form>
        </div>
    </footer>

    <script>
        function showAddSongForm() {    
            document.getElementById("addSongForm").style.display = "flex";
            document.getElementById("addSongForm").style.position = "relative";
            document.getElementById("addSongForm").style.padding = "20px";
            document.getElementById("addSongForm").style.margin = "10px";
            document.getElementById("addSongForm").style.background = "black";
        }
    </script>
</body>
</html>
