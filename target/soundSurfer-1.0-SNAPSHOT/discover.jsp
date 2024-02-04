<%@page import="com.mycompany.soundsurfer.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoundSurfer/discover</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <% 
        User user = (User) session.getAttribute("user");
        if(user.getUsername() ==null){
            response.sendRedirect("index.jsp");
        }
    %>
    
    <div class="nav-bar">
        <h1 id="main-heading">Soundsurfer</h1>
        <div> 
            <p >Hello ${"username"}!</p>
        </div> 
<!--        <div class="login-buttons">
            <a href="index.jsp" class="btn-text"><p class="btn"> Login</p></a>
            <br> 
            <a href="register.jsp" class="btn-text"><p class="btn">Register</p></a>
        </div>-->
    </div>
    
    <div class="panels-container">
        <h2 class="title">Discover</h2>
        <div class="suggestions">
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>
            <div class="song">
                <img class="album-art" src="resources/tpab_cover.jpg" alt="Cover Art">
                <p class="name">Alright</p>
                <p class="name">To Pimp A Butterfly</p>
                <p class="name">Kendrick Lamar</p>
            </div>

        </div>
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
</body>
</html>
