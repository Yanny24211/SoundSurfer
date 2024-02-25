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
    <style>
        /* Style for the form container */
        .form-container {
            width: 300px; /* Adjust as needed */
            margin: 0 auto; /* Center the form horizontally */
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for form labels */
        .form-label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* Style for form input fields */
        .form-input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Style for the submit button */
        .form-submit {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-submit:hover {
            background-color: #45a049;
        }
        body {
            font-family: Verdana, sans-serif;
            color: white;
        }
        .top-bar h1 {
            color: white;
        }
    </style>
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
            <button class="button-style-header" onclick="showAddSongForm()">Add Song</button>
            <button class="button-style-header">Delete Song</button>
        </div>
    </div>

    <div id="addSongForm" style="display: none;">
        <form action="AddSong" method="post">
            <label for="songName">Song Name:</label>
            <input type="text" id="songName" name="songName" required><br>
            
            <label for="artist">Artist:</label>
            <input type="text" id="artist" name="artist" required><br>
            
            <label for="rating">Rating:</label>
            <input type="number" id="rating" name="rating" min="1" max="5" required><br>
            
            <input type="submit" value="Confirm">
        </form>
    </div>

    <div id="addedSongs">
        <h2>Added Songs:</h2>
        <ul>
            <%
                ArrayList<Song> addedSongs = (ArrayList<Song>)session.getAttribute("addedSongs");
                if(addedSongs != null) {
                    for(Song song : addedSongs) {
            %>
                <li><%= song.getTitle() %> - <%= song.getArtist() %> (Rating: <%= song.getRating() %>)</li>
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
            document.getElementById("addSongForm").style.display = "block";
        }
    </script>
</body>
</html>
