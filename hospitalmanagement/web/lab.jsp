

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
        
         <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>

</head>

<body>
    <%@include file="headeruser.jsp" %>
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
				<li class="breadcrumb-item active" aria-current="page">Laboratory</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<div class="appointment py-5">
		<div class="py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Laboratory</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				
			</div>
			<div class="d-flex">
				<div class="appoint-img">

				</div>
				<div class="contact-right-w3l appoint-form">
					<h5 class="title-w3 text-center mb-5">Fill your Lab test form</h5>
                                        <%
            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1,patient,dates,Time,citys,sample,phones,diseases;
                name1=request.getParameter("name");
                phones=request.getParameter("phone");
                patient=request.getParameter("patientid");
                email1=request.getParameter("email");
                 dates=request.getParameter("date");
                gender1=request.getParameter("gender");
                Time= request.getParameter("time");
                citys= request.getParameter("city");
                 sample= request.getParameter("sample");
                  diseases= request.getParameter("disease");
                 
                
              
                
               
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("INSERT INTO lab (name1, email1, patientsid, phone, gender1, sample, date, time, city, disease) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?,?)");
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, patient); 
                            mystatement.setString(4, phones);
                            mystatement.setString(5, gender1);
                            mystatement.setString(6, sample);
                            mystatement.setString(7, dates);
                            mystatement.setString(8, Time);
                             mystatement.setString(9, citys);
                              mystatement.setString(10, diseases);
                            
                            
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>laboratory appointmnet Confirm</label>");
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
							<label for="recipient-name" class="col-form-label">Patient Name</label>
							<input type="text" class="form-control" placeholder="Patient Name " name="name" id="recipient-name" required="">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Patient Email</label>
							<input type="email" class="form-control" placeholder="Your Email" name="email" id="recipient-phone" required="">
						</div>
                                                
                                               <div class="form-group">
                                                             <label  for="recipient-id"  class="col-form-label">Patient ID</label>
                                                            <input type="text" class="form-control" placeholder="Patient ID " name="patientid" id="recipient-id" required="">         
                                                                                                                                                                           
                                                                    </div>
                                            <div class="form-group">
							<label for="recipient-phone" class="col-form-label">Phone</label>
							<input type="text" class="form-control" placeholder="Phone" name="phone" id="recipient-phone" required="">
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
							<label for="datepicker" class="col-form-label">Select Sample Details</label>
							<select  name="sample" required="" class="form-control">
								<option value="">Sample Details</option>
								<option value="blood">Blood</option>
								<option value="urine">Urine</option>
								<option value="tissue">Tissue</option>
								<option value="swab">Swab</option>
								<option value="other">Others</option>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select Test date</label>
							<input placeholder="Date" class="date form-control" id="datepicker" type="date" value="" name="date" onfocus="this.value = '';"
							    onblur="if (this.value == '') {this.value = '';}" required="" />
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select appointment time</label>
							<select  name="time" required="" class="form-control">
								<option value="">Select Time</option>
								<option value="8-8:30">08:00-8:30</option>
								<option value="8:30-9:00">08:30-9:00</option>
								<option value="9:00-9:30"> 09:00-9:30</option>
								<option value="9:30-10:00">09:30-10:00</option>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select City</label>
							<select  name="city" required="" class="form-control">
								<option value="">Select City</option>
								<option value="jallandhar">Jalandhar</option>
								<option value="amristar">Amristar</option>
								<option value="lud"> Ludhiana</option>
								<option value="chand">Chandigarh</option>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Any medical Problem</label>
							<select  name="disease" required="" class="form-control">
								<option value="">Select diseases</option>
								<option value="allergy">Allergy</option>
								<option value="infectious">Infectious diseases</option>
								<option value="diabetes">diabetes </option>
								<option value="other diseases">Other diseases</option>
							</select>
						</div>
						<input type="submit"  name="submitbtn" value="Lab Appointment" class="btn_apt">
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