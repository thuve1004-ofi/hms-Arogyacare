<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arogya Care Hospital</title>
    <link rel="icon" type="image/x-icon" href="favicon.png">
    
    <link rel="stylesheet" href="./styles.css">
    
    
    <style>
/* Header Styling */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #005f73;
    padding: 20px 30px;
    color: white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

/* Logo Section */
.header-logo {
    display: flex;
    align-items: center;
}

.logo-img {
    width: 70px;
    margin-right: 15px;
    border-radius: 50%;
}

.logo-text {
    font-family: 'Georgia', Times, serif;
    font-size: 32px;
    color: #ffffff;
}

/* Navigation Styling */
.header-nav {
    display: flex;
    background-color: #005f73;
}

.nav-links {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
}

.nav-item {
    position: relative;
    margin: 0 15px;
}

.nav-link {
    text-decoration: none;
    color: white;
    font-size: 16px;
    transition: color 0.3s;
    padding: 5px 10px;
}

.nav-link:hover {
    color: #f39c12;
}

/* Dropdown Menu Styling */
.dropdown .dropbtn {
    cursor: pointer;
    border: none;
    background-color: transparent;
    color: white;
    font-size: 16px;
    padding: 5px 10px;
}

.dropdown-menu {
    display: none;
    position: absolute;
    background-color: #ffffff;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown-link {
    color: #005f73;
    padding: 10px 15px;
    text-decoration: none;
    display: block;
    font-size: 14px;
}

.dropdown-link:hover {
    background-color: #f1f1f1;
}

.dropdown:hover .dropdown-menu {
    display: block;
}

/* Heading Styling */
.logo-text {
    font-size: 36px;
}


</style>
</head>
<body>
<!-- nav bar comments --> 
<header class="header">
    <div class="header-logo">
        <img src="Logo.jpeg" alt="Hospital Logo" class="logo-img">
        <h2 class="logo-text">Arogya Care Hospital</h2>
    </div>
    <nav class="header-nav">
        <ul class="nav-links">
            <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="TreatmentTHUVE.html" class="nav-link">Treatments</a></li>
            <li class="nav-item"><a href="#appointments" class="nav-link">Appointments</a></li>
            <li class="nav-item dropdown">
                <a href="javascript:void(0)" class="nav-link dropbtn">Login</a>
                <div class="dropdown-menu">
                    <a href="#Patient" class="dropdown-link">Patient</a>
                    <a href="doctorLogin.jsp" class="dropdown-link">Doctor</a>
                    <a href="NurseLoginTHUVE.jsp" class="dropdown-link">Nurse</a>
                    <a href="LoginSHALOM.jsp" class="dropdown-link">Medical Admin</a>
                </div>
            </li>
            <li class="nav-item"><a href="About UsSHALOM.jsp" class="nav-link">About Us</a></li>
        </ul>
    </nav>
</header>


<script>
document.addEventListener('DOMContentLoaded', () => {
    const mobileMenu = document.getElementById('mobileMenu');
    const navLinks = document.querySelector('nav ul');

    mobileMenu.addEventListener('click', () => {
        navLinks.classList.toggle('show-menu');
    });
});
    function login() {
        document.getElementById('login-container').style.display = 'none'; // Hide login
        document.getElementById('profile-container').style.display = 'block'; // Show profile
    }

    function logout() {
        document.getElementById('profile-container').style.display = 'none'; // Hide profile
        document.getElementById('login-container').style.display = 'block'; // Show login
    }

    function toggleProfileDropdown() {
        const dropdown = document.getElementById('profile-dropdown');
        dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
    }
</script>

<!-- CSS for the navbar and dropdown -->



<!-- nav bar comments --> 
    

    <div class="home">
        <h1 id="heading">Most trusted health partner for your life.</h1>
        <h3 class="btn">Book appointment</h3>
        <img id="doctor" src="img\demo-medical-hero-banner-01.png" alt="Medical Banner">
       </div>

       <div class="DevTwo">
        
        <h3 class="covid">| COVID 19 information  |</h3>
        <div class="message"> Clean your hands frequently with alcohol-based hand soap and water.</div>
        <div class="message"> Get vaccinated when it's your turn and follow guidance on vaccination.</div>
       </div>
       <div class="Devthree">
        <img id="staff" src="img\demo-medical-home-02.jpg" alt="Medical Banner">
        <img class="staffOne" src="img\demo-medical-home-03.jpg" alt="">
    
        <div class="welcome-section">
            <h1>Welcome to our Arogya Care Hospital.</h1>
            <p id="about">We value each and every human life placed in our hands and constantly work towards meeting the expectations of our customers and stakeholders.</p>
            <div class="reviews">
                
                <h2>722+</h2>
                <p>5 star reviews from our satisfied people.</p>
            </div>
            <button>About hospital</button>
            <button>Check timetable</button>
        </div>
       
       </div>



</body>
</html>
