


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
				<li class="breadcrumb-item active" aria-current="page">Register</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->
   <div class="appointment py-5">
		<div class="py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Register</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				
			</div>

<!--<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">-->
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content modal-content-2">
					<div class="modal-body">
						<div class="login px-4 mx-auto mw-100">
							<h5 class="text-center mb-4">Register Now</h5>
                                                           <%
            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1, password1, password2,usertype;
                name1=request.getParameter("name");
                email1=request.getParameter("email");
                gender1=request.getParameter("gender");
                password1=request.getParameter("password1");
                password2=request.getParameter("password2");
               
                
                
                if(password1.equals(password2)){
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into usertable (name1, email1, gender1, password1, usertype) values(?, ?, ?, SHA(?),?)");
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, password1 + SALT);
                            
                             mystatement.setString(5, "user");
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Registerd Succesfully. Now you can login</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
                else {
                    out.print("<label class='col-form-label'>Password does not match. Please try again</label>");
                }
            }
        %>
							<form action="#" method="post">
								<div class="form-group">
									<label>Your Name</label>
									<input type="text" class="form-control" name="name" placeholder="" required="">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="email" class="form-control" name="email" placeholder=""  id="email" required="">
								</div>
                                                             
        <div id="answerbox"></div>
        
                                                             <div class="form-group">
                                                                         <label>Gender</label>
                                                                         <select name="gender" class="form-control" >
                                                                         <option value="">Choose Gender</option>
                                                                          <option value="male">Male</option>
                                                                              <option value="female">Female</option>
                                                                </select>
                                                                 </div>
                             
								<div class="form-group">
									<label class="mb-2">Password</label>
									<input type="password" class="form-control" name="password1" id="password1" placeholder="" required="">
								</div>
								<div class="form-group">
									<label>Confirm Password</label>
									<input type="password" class="form-control" name="password2" id="password2" placeholder="" required="">
								</div>
                                                           
								<p class="text-center pb-2">
									<a href="#" class="text-white">By clicking Register, I agree to your terms</a>
								</p>
                                                                <input type="submit" class="form-control" name="submitbtn" value="Register">
							</form>
                                                       
						</div>
					</div>
				</div>
			</div>
		</div>
            </div>

	<%@include file="footer.jsp" %>
        <script>
        $(document).ready(function(){
            $("#email").blur(function(){
                var email1 = $("#email").val();
                $.ajax({
                    method: "POST",
                    url: "myajax.jsp",
                    data: { email: email1 }
                })
                .done(function(msg){
                    $("#answerbox").html(msg);
                });
            });
        });
    </script>
              

</body>

</html>                              