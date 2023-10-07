

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
    <%@include file="adminheader.jsp" %>
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
					<a href="index.html">Home</a>
				</li>
				<li class="breadcrumb-item active" aria-current="page">Doctor</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<div class="appointment py-5">
		<div class="py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Add Doctor</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				
			</div>
			<div class="d-flex">
				<div class="appoint-img">

				</div>
				<div class="contact-right-w3l appoint-form">
					<h5 class="title-w3 text-center mb-5">Add the Doctor</h5>
                                        <%
            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1,phones,designation,degres,specials;
                name1=request.getParameter("name");
                email1=request.getParameter("email");
                gender1=request.getParameter("gender");
                phones= request.getParameter("phone");
                designation= request.getParameter("desig");
                degres= request.getParameter("degree");
                specials=request.getParameter("special");
                
              
                
               
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("INSERT INTO doctor (name1, email1, gender1, phone, designation, degree, specials) VALUES (?, ?, ?, ?, ?, ?, ?)");
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, phones);
                            mystatement.setString(5, designation);
                            mystatement.setString(6, degres);
                          mystatement.setString(7, specials);
                            
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Add Doctor</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
               
            
        %>
					<form action="" method="post">
						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Doctor Name</label>
							<input type="text" class="form-control" placeholder="Doctor Name " name="name" id="recipient-name" required="">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label"> Email</label>
							<input type="email" class="form-control" placeholder="Email" name="email" id="recipient-phone" required="">
						</div>
                                            
                                                <div class="form-group">
                                                            <label for="datepicker" class="col-form-label">Gender</label>
                                                            <select name="gender" class="form-control" >
                                                            <option value="">Choose Gender</option>
                                                             <option value="male">Male</option>
                                                                 <option value="female">Female</option>
                                                   </select>
                                                    </div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label"> Phone</label>
							<input type="text" class="form-control" placeholder="phone" name="phone" id="recipient-phone" required="">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Designation</label>
							<input type="text" class="form-control" placeholder="eg. consultant doctor,head of department" name="desig" id="recipient-phone" required="">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Degree</label>
							<input type="text" class="form-control" placeholder="eg. MBBS,MD" name="degree" id="recipient-phone" required="">
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select Speciality</label>
							<select  name="special" required="" class="form-control">
								<option value="">Select Speciality</option>
								<option value="dermatology">Dermatology</option>
								<option value="ENT">ENT</option>
								<option value="General"> General Medicine</option>
								<option value="nutritionist">Nutritionist</option>
							</select>
						</div>
						<input type="submit"  name="submitbtn" value="Add Doctor" class="btn_apt">
					</form>
				</div>
				<div class="clerafix"></div>
			</div>
		</div>
	</div>
	<!-- //contact -->

	<%@include file="footer.jsp" %>
</body>

</html>