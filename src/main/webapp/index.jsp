<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoundSurfer/login</title>
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
    <div class="login-container">
        <h2>SoundSurfer Login</h2>
    
        <form action="Login" method="post">
            <div class="form-group"> 
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <p>Don't have an account?  <a href="register.jsp" class="btn btn-register">Register</a></p>
    </div>    
</body>
</html>