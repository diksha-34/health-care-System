

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Medic Medical Category Bootstrap Responsive Web Template | Home :: W3layouts</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Medic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //Web-Fonts -->
         <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>

</head>

<body>
    <%@include file="header.jsp" %>


	<!-- banner 2 -->
	<div class="inner-banner-w3ls">
		<div class="container">

		</div>
		<!-- //banner 2 -->
	</div>
	<!-- page details -->
	<div class="breadcrumb-agile">
		<div aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<a href="index.jsp">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Login Us</li>
			</ol>
		</div>
	</div>
        <div class="appointment py-5">
		<div class="py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Login</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				
			</div>
	<!-- //page details -->
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					

					<div class="modal-body">
						<div class="login px-4 mx-auto mw-100">
							<h5 class="text-center md-4">Login Now</h5>
							<form action="#" method="post">
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder="" required="">
								</div>
								<div class="form-group">
									<label class="mb-2">Password</label>
									<input type="password" class="form-control" name="password1" placeholder="" required="">
								</div>
                                                             <input type="checkbox" name="rememberme" >Stay Signed In
                                                            <p class="account-w3ls text-center pb-4">
									Don't have an account?
									<a href="#" data-toggle="modal" data-target="#exampleModalCenter2">Create one now</a>
								</p>
                                                            <input type="submit"  class="form-control" name="loginbtn" value="Login">
								
								
								
							</form>
                                                        <%
            if(request.getParameter("loginbtn")!=null){
                String email1, password1;
                
                email1=request.getParameter("email");
                
                password1=request.getParameter("password1");
                
                
              
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("select * from usertable where email1=? and password1=SHA(?)");
                            
                            mystatement.setString(1, email1);
                            mystatement.setString(2, password1 + SALT);
                            
                            ResultSet myresult=mystatement.executeQuery();
                            if(myresult.next()){
                                if(myresult.getString("usertype").equals("admin")){
                                    
                                    if(request.getParameter("rememberme")!=null){
                                        Cookie mycookie3=new Cookie("adminname", myresult.getString("name1"));
                                        mycookie3.setMaxAge(3600);
                                        response.addCookie(mycookie3);
                                    }
                                    session.setAttribute("adminname", myresult.getString("name1"));
                                    response.sendRedirect("admin.jsp");
                                }
                                else{
                                    if(request.getParameter("rememberme")!=null){
                                        Cookie myCookie1=new Cookie("uname1", myresult.getString("name1"));
                                        myCookie1.setMaxAge(60*60*24*7);
                                        response.addCookie(myCookie1);
                                        
                                        Cookie myCookie2 = new Cookie("emailid", email1);
                                    myCookie2.setMaxAge(60*60*24*7);
                                    response.addCookie(myCookie2);
                                    }
                                    session.setAttribute("name",myresult.getString("name1"));
                                    session.setAttribute("email", email1);
                           response.sendRedirect("userlogin.jsp");
                                }
                           
                            }
                            else{
                                out.print("Incorrect username or password");
                                }
                            
                            }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    } 
            }
        %>
						</div>
					</div>
				</div>
			</div>
                </div>
        </div>
        

	<%@include file="footer.jsp" %>

</body>

</html>