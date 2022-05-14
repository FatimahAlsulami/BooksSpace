

  <html>
<head>
<meta charset="utf-8"/>
    
<meta content="IE=edge" http-equiv="X-UA-Compatible"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Services Section</title>

<link href="css/style.css" rel="stylesheet" type="text/css"/>
<%@ page errorPage = "ShowError.jsp" %>
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


	<section class="services">
	<!--heading---------------->
	<div class="s-heading">
	   <img src="logo.png" style = "position:relative; left:-450px; top:25px; width: 200px; hight: 190px;">
   <p style="color: black; position: relative; top:-10px; left: -450px;">User ID: <%out.print(DB.Connections.getID());%></p>
   
	<h1>Ser<font color="#8B008B">vic</font>es</h1>
	
	<p>Services That provided in Books Space Website</p>
	</div>
	<!--services-box-container------------------->
	<div class="s-box-container">
	
	
   
	<!--service-box-1---------------->	
	<div class="s-box">
	<!--top-bar-------->
	<div class="bar"></div>
	<!--img---------->
	<img src= "add-book.png" alt="1">
	<!--servies-name---------->
	<h1>ADD BOOK</h1>
	<!--details------>
		<p>add book to selling.</p>
		<br><br>
	<!--btn---------->
	<a class="s-btn" href="AddBookRequest.jsp">More</a>
	</div>
		<!--service-box-1---------------->	
	<div class="s-box">
	<!--top-bar-------->
	<div class="bar"></div>
	<!--img---------->
	<img alt="2" src="remove.png" />
	<!--servies-name---------->
	<h1>  DELETE BOOK</h1>
	<!--details------>
		<p> delete the book you added before</p>
	<!--btn---------->
	<a class="s-btn" href="DeleteBookForm.jsp">More</a>
	</div>
		<!--service-box-3---------------->	
	<div class="s-box">
	<!--top-bar-------->
	<div class="bar"></div>
	<!--img---------->
	<img alt="3" src="request.png" />
	<!--servies-name---------->
	<h1>SHOW MY REQUESTSS</h1>
	<!--details------>
		<p>When you add book or delete it will send it as request to admin</p>
        
       <a class="s-btn" href="user_requests.jsp">More</a>
	</div>
		<!--service-box-1---------------->	
	<div class="s-box">
	<!--top-bar-------->
	<div class="bar"></div>
	<!--img---------->
	<img alt="4" src="showbooks.png" />
	<!--servies-name---------->
	<h1>SHOW BOOKS</h1>
	<!--details------>
		<p> Show all books that avaliable in our website</p>
	<!--btn---------->

	<!--btn---------->
	<a class="s-btn" href="ShowBooks.jsp">More</a>
	</div>
	</div>
	</section>
</body>
</html>
  