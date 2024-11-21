<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <title>Login</title>
    
    
    <link rel="icon" type="image/x-icon" href="favicon.png">
    
    <link href="css/index-stylesTHUVE.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href=".\css_files\NurseLogincssTHUVE.css">
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
</head>
<body>
    <div class="container">
        <div class="login-box">
            <h2>Login</h2>
            <form action="NurseLoginServletTHUVE" method="post">
                <div class="user-box">
                    <input id="nurse_id" name="nurse_id"  required>
                    <label>Nurse ID </label>
                </div>
                <div class="user-box">
                    <input type="password" id="npassword" name="npassword" required>
                    <label>Password</label>
                </div>
                <button class="btn-login" type="submit">Login</button> 
                </form> <br>
                <form action="home.jsp" method="get">
				    <button class="btn-back" type="submit">&#8592; Back</button>
				</form>

            
        </div>
    </div>

</body>
</html>