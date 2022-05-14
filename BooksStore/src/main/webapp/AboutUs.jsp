
  <html>
<head>
<meta charset="utf-8"/>
    
<meta content="IE=edge" http-equiv="X-UA-Compatible"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <%@ page errorPage = "ShowError.jsp" %>
<%@ page import="java.sql.*" %>   
<title>About Us</title>

<link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<style>
@charset "utf-8";
/* CSS Document */
body{
	margin:2px;
	padding: 2px;
	background-color: #E6E6FA;
	font-family: calibri;
    
}

a{
	text-decoration:none;
}
.services{
	width:100%;
	height: 100vh;
	display: flex;
	flex-direction: column;
	justify-content: space-evenly;
	align-items: center;
}
.s-heading{
	text-align:center;
}
.s-heading h1{
	color:#576975;
	font-size: 3rem;
	font-weight: 400;
	letter-spacing: 1px;
	margin: 0px;
}
.s-heading p{
	color: rgba(87,105,117,0.60);
	font-size: 1rem;
	margin: 5px;
	text-align: center;
}

.s-box-container{
	width:80%;
    background-color: #FFFFFF;
	display: flex;
	justify-content: center;
	align-items: center;
}
.s-box{
	display:flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	border-radius: 10px;
	width:300px;
	padding: 20px 25px;
	height: 400px;
	box-sizing: border-box;
	margin: 30px;
	position: relative;
}
.s-box img{
	height: 75px;
	text-align: center;
}
.s-box h1{
	color:#576975;
	letter-spacing: 1px;
	font-size: 1.5rem;
	margin-bottom: 8px;
	text-align: center;
	
}
.s-box p{
	color: rgba(87,105,117,0.90);
	text-align: center;
}
.s-btn{
	width: 140px;
	height: 40px;
	border-radius: 20px;
	border:1px solid rgba(74,144,226,0.50);
	display: flex;
	justify-content: center;
	align-items: center;
	color:#576975;
	margin-top:10px; 
}
.bar{
	width: 100px;
	height: 6px;
	position: absolute;
	left: 50%;
	top: 0%;
	transform: translateX(-50%);
	background-color:#8B008B; 
	border-radius: 0px 0px 10px 10px;
	display: none;
	animation: bar 0.5s;
}
.icon-bar {
  width: 10%;
  background-color: #5552;
  overflow: auto;
}

.icon-bar a {
 float: left;
  width: 20%;
  text-align: center;
  padding: 2px 2;
  transition: all 0.3s ease;
  color: white;
  font-size: 36px;
}

.icon-bar a:hover {
  background-color: #8B008B;
}
.s-box:hover{
	box-shadow: 2px 2px 30px rgba(0,0,0,0.08);
	transition: all ease 0.3s;
}
.s-btn:hover{
	background-color:#4a90e1;
	border: 1px solid #4a90e2;
	color:#8B008B;
	transition: all ease 0.3s;
}
.s-box:hover .bar{
	display: block;
}
@keyframes bar{
	0%{
		width:0px;
	}
	100%{
		width:100px;
	}
}
@media(max-width:1050px){
	.s-box-container{
		flex-wrap: wrap;
		
	}	
	.services{
		height: auto;
	}
	.s-heading{
		margin: 15px;
	}
	.s-box{
		flex-grow: 1;
	}
	
}
</style>
<body>

        <div class="icon-bar">
     <a class="active" href="#"><i class="fa fa-home"></i></a> 
     <a href="Serv.jsp"><i class="fa fa-envelope"></i><img alt="1" src="home.png" /></a> 
    <i>          </i> 
     <a href="Logout.jsp">  <i class="fas fa-sign-out-alt"></i><img alt="2" src="logoutt.png" /></a>
</div>


	<section class="services">
	<!--heading---------------->
	<div class="s-heading">
   
	<h1>About<font color="#8B008B">Us</font></h1>
	
	<p>              We are satisfied with of what we have accomplished so far, but there is always room for more improvements.<br> We are hoping that we could upgrade Books Space website to include more functions</p>
	</div>
	<div class="s-box-container">

	<div class="s-box">
	<div class="bar"></div>
	<img src= "dev.jpg" alt="1">
	<h1>Fatimah Alsulami</h1>
	</div>
	<div class="s-box">
	<div class="bar"></div>
	<!--img---------->
	<img alt="2" src="dev.jpg" />
	<h1>  Wejdan Alghtani</h1>
	</div>
	<div class="s-box">
	<div class="bar"></div>
	<img alt="3" src="dev.jpg" />
	<h1>Asil Alhebshi</h1>
	</div>
	<div class="s-box">
	<div class="bar"></div>
	<!--img---------->
	<img alt="4" src="dev.jpg" />

	<h1>Layan Bitrah</h1>
	<!--details------>
		
	</div>
	</div>
	</section>
</body>
</html>
