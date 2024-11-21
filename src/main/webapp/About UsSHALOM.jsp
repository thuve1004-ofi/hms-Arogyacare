<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <link rel="icon" type="image/x-icon" href="favicon.png">
    
    
    <title>About Us</title>
    <link rel="stylesheet" href="styles.css">
    <script defer src="scripts.js"></script>
</head>
<style>

body {
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	background-image: url('About US BG.jpg');
	background-size: cover;
	background-attachment: fixed;
	background-repeat: no-repeat;
	margin-top: 0;
	margin-bottom: 0;
	margin-left: 0;
	margin-right: 0;
	padding-bottom: 0;
}

main {
    text-align: center;
	background-image: url('About Us BG2.jpg');
	background-blend-mode: color-dodge;
	background-size: cover;
	padding-top: 20px;
	padding-left: 50px;
	padding-right: 50px;
	padding-bottom: 20px;
	border-radius: 55px;
	box-shadow: 0 0 15px rgba(0, 0, 0.5, 0.5);
	max-width: 800px;
	margin: auto;
	margin-bottom: 80px;
}

.about-us {
    text-align: justify;
    margin-bottom: 40px;
}

.about-us h2 {
    font-size: 40px;
    color:  #000e78;
    margin-bottom: 20px;
}

.about-us p {
    font-size: 20px;
    margin-bottom: 15px;
    color: black;
}

.team {
    text-align: center;
    margin-bottom: 40px;
}

.team h2 {
    font-size: 40px;
    color: #000e78;
    margin-bottom: 20px;
}

.team-member {
    display: inline-block;
    width: 30%;
    text-align: center;
    margin: 20px;
}

.team-member img {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    margin-bottom: 10px;
    box-shadow: 2px 3px 9px rgba(0, 33, 104, 0.826);
}

.team-member h3 {
    font-size: 28px;
    color: black;
}

.team-member p {
    font-size: 20px;
    color: #000e78bb;
}

.values {
    text-align: center;
    margin-bottom: 40px;
}

.values h2 {
    font-size: 40px;
    color: #000e78;
    margin-bottom: 20px;
}

.values ul {
	text-align: center;
	color: black;
    list-style-type: none;
}

.values ul li {
    font-size: 20px;
    margin: 10px 0;
}

header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #005f73;
	padding: 20px 30px;
	color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	position: sticky;
	top: 0;
	z-index: 1000;
	margin-bottom: 50px;
}

.logo {
	display: flex;
	align-items: center;
}

.logo img {
	width: 90px;
	margin-right: 10px;
	border-radius: 50%;
}

.logo h1 {
	font-family: Georgia, Times, Times New Roman, serif;
	font-size: 40px;
	color: #ffffff;
}

nav ul {
	display: flex;
	list-style: none;
	margin-right: 100px;
}

nav ul li {
	position: relative;
	margin: 0 20px;
}

nav ul li a {
	text-decoration: none;
	color: white;
	font-size: 18px;
	transition: color 0.3s;
}

nav ul li a:hover {
	color: #f39c12;
}

.dropdown .dropbtn {
	cursor: pointer;
	border: none;
	background-color: transparent;
	color: white;
	font-size: 18px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: #005f73;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.profile {
	display: flex;
	align-items: center;
	gap: 10px;
}

.profile-img {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	border: 2px solid #ffffff;
}

.mobile-menu {
	display: none;
	cursor: pointer;
}

.login-btn {
	background-color: #ffcc00;
	border: none;
	padding: 7px 10px;
	font-size: 16px;
	cursor: pointer;
	border-radius: 55px;
	color: black;
}

.login-btn:hover {
	background-color: #ff9900;
}

h3 {
	font-family: Georgia, Times, Times New Roman, serif;
	text-align: center;
	text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
	padding: 0px;
	color: #a81212;
	font-size: 30px;
	letter-spacing: 1px;
}

footer {
	background-color: #2C3E50;
	color: white;
	padding: 20px 0;
	text-align: center;
	font-family: Arial, sans-serif;
	width: 100%;
}

.footer-container {
	max-width: 1200px;
	margin: 0 auto;
}

.footer-content h3 {
	margin-bottom: 10px;
	font-size: 24px;
	font-weight: bold;
}

.footer-content p {
	margin: 5px 0;
	font-size: 16px;
}

.footer-content a {
	color: #1ABC9C;
	text-decoration: none;
}

.footer-content a:hover {
	text-decoration: underline;
}

.footer-content .social a {
	margin: 0 5px;
}

.footer-content .tagline {
	margin-top: 10px;
	font-style: italic;
}

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

<script>

document.addEventListener('DOMContentLoaded', () => {
    const mobileMenu = document.getElementById('mobileMenu');
    const navLinks = document.querySelector('nav ul');

    mobileMenu.addEventListener('click', () => {
        navLinks.classList.toggle('show-menu');
    });
});

</script>
<body>


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


<main>
<br><br>
    <br>
    <br><br>
    <br>
    <br><br><br>
    <br>
    <br><br>
    <br>
    <br>
    <section class="about-us">
    
    
        <h2>About Arogya Care Hospital</h2>
        <p>At Arogya Care Hospital, we have been at the forefront of healthcare innovation and excellence for over 25 years. Our mission is to provide world-class medical care to all our patients with compassion, integrity, and cutting-edge treatments. Situated at the heart of the city, Arogya Care has grown to become a trusted name in healthcare, offering a wide range of services from primary care to specialized medical treatments.</p>
        <p>We believe that quality healthcare should be accessible to everyone. Our team of experienced doctors, nurses, and healthcare professionals are dedicated to delivering personalized care that meets the unique needs of every individual. From diagnosis to recovery, we ensure that our patients are supported every step of the way.</p>
    	<br>
    	
    	<h2>Our Vision and Mission</h2>
    	<p>At Arogya Care Hospital, our vision is to set new standards in healthcare by integrating advanced medical technologies with a compassionate approach to patient care. We aim to become a leader in healthcare by fostering a culture of continuous improvement, collaboration, and innovation.</p>
    	<p>Our mission is simple: to save lives, provide hope, and contribute to the well-being of our community. We strive to offer affordable, high-quality healthcare while staying true to our core values of empathy, respect, and professionalism.</p>
		<br>   
	</section>

    <section class="team">
        <h2>Our Branches</h2>
        <div class="team-member">
            <img src="Jaffna.jpg">
            <h3>Jaffna</h3>
            <p>No.10 Hospital Road, Jaffna</p>
        </div>
        <div class="team-member">
            <img src="Vavuniya.jpg">
            <h3>Vavuniya</h3>
            <p>129, Mannar Road, Vavuniya</p>
        </div>
        <div class="team-member">
            <img src="Kilinochi.jpg">
            <h3>Kilinochi</h3>
            <p>No.37 A9 Road, Kilinochi</p>
        </div>
        <div class="team-member">
            <img src="Hatton.jpg">
            <h3>Hatton</h3>
            <p>No.23 Market Road, Hatton</p>
        </div>
    </section>

    <section class="values">
        <h2>Our Values</h2>
        <ul>
            <li>Commitment to patient care</li>
            <li>Integrity in medical practice</li>
            <li>Innovation and cutting-edge treatment</li>
        </ul>
    </section>
</main>

<footer>
		<div class="footer-container">
			<div class="footer-content">
				<h3>Arogya Care Hospital</h3>
				<p>
					Contact: <a href="tel:+00213674211">+94 21 856 8547</a>
				</p>
				<p class="social">
					Follow Us: <a href="#">Facebook</a> | <a href="#">LinkedIn</a> | <a href="#">Twitter</a>
				</p>
				<p class="tagline">Your Health, Our Expertise</p>
				<p>&copy; 2024 Arogya Care Hospital, All Rights Reserved. Colombo, Malabe.</p>
			</div>
		</div>
	</footer>
	


</body>
</html>
