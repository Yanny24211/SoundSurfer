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
        if(user == null){
            response.sendRedirect("index.jsp");
        }
    %>
    
    <div class="nav-bar">
        <h1 id="main-heading">Soundsurfer</h1>
        <div class="name"> 
            <p>Hello ${user.getUsername()}!</p>
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
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/5u6y4u5EgDv0peILf60H5t?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/1icgLGTpX2fQXKRe4D7w2b?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/0d0jsoba88SpOoFxCxA2rZ?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/4NU6Vnrsh09TdZtIBYBwTA?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/6WgxXdBZrtdQFGBcxQxpiv?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/7Ks4VCY1wFebnOdJrM13t6?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/3j91k2v0AYunANIBULtcT8?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>    
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/3lOpMY6bWG9ePWca1D0DQZ?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/3yk7PJnryiJ8mAPqsrujzf?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/35fC3Wq3slX4OBfyvBVmHm?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/1h6kgem1ai8vUgO1rZOwfB?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>
            <div class="song">
                <iframe style="border-radius:12px" src="https://open.spotify.com/embed/track/42d2S44fFDJpjS1qG4Pvod?utm_source=generator" width="100%" height="352" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
            </div>

        </div>
    </div>  
    <footer>
        <p>Developed by Deep Patel and Yanny Patel</p>
        <div class="footer-buttons">
            <a href="discover.jsp"><button class="button-style-footer">Discover</button></a>
            <a href="library.jsp"><button class="button-style-footer">Track Library</button></a>
            <a href="stats.jsp"><button class="button-style-footer">My Statistics</button></a>
            <form class=lgout action="Logout" method="get"><input type="submit" value="Logout" class="button-style-logout"></form>
        </div>
    </footer>
</body>
</html>
