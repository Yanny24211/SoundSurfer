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
        if(user.getUsername() ==null){
            response.sendRedirect("index.jsp");
        }
 
    %>
    <div class="top-bar">
        <img src="resources/tracklibraryicon.png" alt="libraryicon" class="libraryicon">
        <div class="main-heading">
            <h1>Track Management Library</h1>
        </div>
        <div class="buttons">
            <button class="button-style-header">Add Song</button>
            <button class="button-style-header">Delete Song</button>
        </div>
    </div>
    <footer>
        <p>Developed by Deep Patel and Yanny Patel</p>
        <div class="footer-buttons">
            <a href="discover.jsp"><button class="button-style-footer">Discover</button></a>
            <a href="library.jsp"><button class="button-style-footer">Track Library</button></a>
            <a href="stats.jsp"><button class="button-style-footer">My Statistics</button></a>
            <a href="index.html"><button class="button-style-logout">Logout</button></a>
        </div>
    </footer>
</body>
</html>