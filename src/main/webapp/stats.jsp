<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soundsurfer/mystats</title>
    <link rel="stylesheet" href="mystatstyles.css">
</head>
<body>
    <% 
        if(session.getAttribute("username")==null){
            response.sendRedirect("index.jsp");
        }
 
    %>
    <div class="top-bar">
        <img src="resources/statsicon.png" alt="libraryicon" class="libraryicon">
        <div class="main-heading">
            <h1>My Statistics / Recommendations</h1>
        </div>
    </div>
    <div class="information">
        <div class="stats-panel">
            <h3>My Statistics</h3>
            <p>Song Count: {{ numSongs }}</p>
            <p>Artist Count: {{ numArtists }}</p>
            <br>
            <p>Favorite Genre: {{ favGenre }}</p>
            <p>Favorite Artist: {{ favArtist }}</p>
            <p>Favorite Song: {{ favSong }}</p>
        </div>
        <div class="suggestion-panel">
            <h3>Song Suggestions</h3>
            <div class="suggestion-details">
                <img src="resources/tpab_cover.jpg" alt="" class="suggestionicon">
                <p>Artist: {{ artistName }}</p>
                <p>Song Name: {{ songName }}</p>
                <p>Release Year: {{ releaseYear }}</p>
            </div>
        </div>
    </div>
    <footer>
        <p>Developed by Deep Patel and Yanny Patel</p>
        <div class="footer-buttons">
            <a href="discover.jsp"><button class="button-style-footer">Discover</button></a>
            <a href="library.jsp"><button class="button-style-footer">Track Library</button></a>
            <a href="stats.jsp"><button class="button-style-footer">My Statistics</button></a>
            <a href="index.jsp"><button class="button-style-logout">Logout</button></a>
        </div>
    </footer>
</body>
</html>