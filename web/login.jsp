
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/login_res.css">
        <title>CapyTravel - Login</title>
    </head>
    <body>
        <div class="wrapper">
            <form action="CapyTravelController" method="post">
                <h1>Login</h1>
                <div class="input-box">
                    <input type="text" name="username" 
                           placeholder="Username" required>
                    <i class='bx bxs-user' ></i>
                </div>
                <div class="input-box">
                    <input type="password" name="password" 
                           placeholder="Password" required>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <div class="remember-forgot">
                    <lable>
                        <input type="checkbox"> Remember me
                    </lable>
                    <a href="#">Forgot password?</a>
                </div>
                <button type="submit" name="buttonAction" value="login"
                        class="btn">Login</button>

                <div class="register-link">
                    <p>Don't have an account? <a href="">Register</a></p>
                </div>
            </form>
        </div>

    </body>
</html>
