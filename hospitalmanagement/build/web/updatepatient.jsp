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
                                <li class="breadcrumb-item active" aria-current="page">Patient</li>
			</ol>
		</div>
	</div>
        
        <%
              String patientids = request.getParameter("patientid");
             String name1="", email1="", gender1="",Doctor="",dates="",Time="",citys="",specials=""; 
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from appointment where patientid=?");
            mystatement.setString(1,patientids);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                
                name1 = myresult.getString("name1");
                email1 = myresult.getString("email1");
                gender1 = myresult.getString("gender1");
                Doctor = myresult.getString("doctor1");
                dates = myresult.getString("date");
                 Time = myresult.getString("time");
                  citys = myresult.getString("city");
                   specials = myresult.getString("special");
                 
                
            } else {
                out.print("Wrong Doctor");
            }
        } catch (Exception e) {
            out.print("Error in Connection or Query due to " + e.getMessage());
        }

            %>
        <div class="d-flex">
				<div class="appoint-img">

				</div>
				<div class="contact-right-w3l appoint-form">
					<h5 class="title-w3 text-center mb-5">Update Patient Appointment</h5>
                                        
         <%
            if(request.getParameter("submitbtn")!=null){
               
                
                name1=request.getParameter("name");
                Doctor=request.getParameter("doctor");
                email1=request.getParameter("email");
                 dates=request.getParameter("date");
                gender1=request.getParameter("gender");
                Time= request.getParameter("time");
                citys= request.getParameter("city");
                 specials= request.getParameter("special");
               
               try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("update appointment set name1=?, email1=?, gender1=?, doctor1=?, date=?, time=?, city=?, special=? where patientid=?"); 
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, Doctor);
                            mystatement.setString(5, dates);
                            mystatement.setString(6, Time);
                            mystatement.setString(7, citys);
                            mystatement.setString(8, specials);
                            mystatement.setString(9, patientids);
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Update Appointment Detail of Patient</label>");
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
							<label for="recipient-name" class="col-form-label">Your Name</label>
							<input type="text" class="form-control" placeholder="Your Name " name="name" id="recipient-name" required="" value="<%= name1 %>" >
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Your Email</label>
							<input type="email" class="form-control" placeholder="Your Email" name="email" id="recipient-email" required="" value="<%= email1 %>" >
						</div>
                                            
                                            
                                                <div class="form-group">
                                                           <label for="datepicker" class="col-form-label">Gender</label>
                                                            <select name="gender" class="form-control" >
                                                            <option value="">Choose Gender</option>
                                    <%
                                        if (gender1 == null) {
                                            gender1 = "";
                                        }
                                        if (gender1.equals("male")) {
                                            out.print("<option value='male' selected>Male</option>");
                                            out.print("<option value='female'>Female</option>");
                                        } else {
                                            out.print("<option value='male'>Male</option>");
                                            out.print("<option value='female' selected>Female</option>");
                                        }
                                    %>
                               </option>
                                                   </select>
                                                   <div class="form-group">
							<label for="datepicker" class="col-form-label">Select your doctor</label>
							<select  name="doctor" required="" class="form-control">
								<%
                                                                    if(Doctor.equals("Anne"))
                                                                    {
								out.print("<option value='Anne' selected>Anne Dan</option>");
								out.print("<option value='Carol'>Carol Una</option>");
								out.print("<option value='Diana'>Diana Sue</option>");
								out.print("<option value='Irene'>Irene Sally</option>");
								out.print("<option value='jane'>Jane Mary</option>");
                                                                        }
                                                                   else if(Doctor.equals("Carol"))
                                                                    {
								out.print("<option value='Anne' >Anne Dan</option>");
								out.print("<option value='Carol'selected>Carol Una</option>");
								out.print("<option value='Diana'>Diana Sue</option>");
								out.print("<option value='Irene'>Irene Sally</option>");
								out.print("<option value='jane'>Jane Mary</option>");
                                                                        }
                                                                   else if(Doctor.equals("Diana"))
                                                                    {
								out.print("<option value='Anne' >Anne Dan</option>");
								out.print("<option value='Carol'>Carol Una</option>");
								out.print("<option value='Diana'selected>Diana Sue</option>");
								out.print("<option value='Irene'>Irene Sally</option>");
								out.print("<option value='jane'>Jane Mary</option>");
                                                                        }
                                                                   else if(Doctor.equals("Irene"))
                                                                    {
								out.print("<option value='Anne' >Anne Dan</option>");
								out.print("<option value='Carol'>Carol Una</option>");
								out.print("<option value='Diana'>Diana Sue</option>");
								out.print("<option value='Irene'selected>Irene Sally</option>");
								out.print("<option value='jane'>Jane Mary</option>");
                                                                        }
                                                                   else 
                                                                    {
								out.print("<option value='Anne' >Anne Dan</option>");
								out.print("<option value='Carol'>Carol Una</option>");
								out.print("<option value='Diana'>Diana Sue</option>");
								out.print("<option value='Irene'>Irene Sally</option>");
								out.print("<option value='jane'selected>Jane Mary</option>");
                                                                        }
                                                                    
                                                                        %>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select appointment date</label>
							<input placeholder="Date" class="date form-control" id="datepicker" type="date"  name="date" onfocus="this.value = '';"
							    onblur="if (this.value == '') {this.value = '';}" required=""  value="<%= dates %>" />
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select appointment time</label>
							<select  name="time" required="" class="form-control">
                                                            <%
                                                                if(Time.equals("8:00-8:30"))
                                                                {
								out.print("<option value='8:00-8:30' selected>08:00-8:30</option>");
								out.print("<option value='8:30-9:00'>08:30-9:00</option>");
								out.print("<option value='9:00-9:30'> 09:00-9:30</option>");
								out.print("<option value='9:30-10:00'>09:30-10:00</option>");
                                                                        }
                                                                else if(Time.equals("8:30-9:00"))
                                                                {
								out.print("<option value='8:00-8:30'>08:00-8:30</option>");
								out.print("<option value='8:30-9:00'selected>08:30-9:00</option>");
								out.print("<option value='9:00-9:30'> 09:00-9:30</option>");
								out.print("<option value='9:30-10:00'>09:30-10:00</option>");
                                                                        }
                                                                else if(Time.equals("9:00-9:30"))
                                                                {
								out.print("<option value='8:00-8:30'>08:00-8:30</option>");
								out.print("<option value='8:30-9:00'>08:30-9:00</option>");
								out.print("<option value='9:00-9:30' selected> 09:00-9:30</option>");
								out.print("<option value='9:30-10:00'>09:30-10:00</option>");
                                                                        }
                                                                else 
                                                                {
								out.print("<option value='8:00-8:30' selected>08:00-8:30</option>");
								out.print("<option value='8:30-9:00'>08:30-9:00</option>");
								out.print("<option value='9:00-9:30'> 09:00-9:30</option>");
								out.print("<option value='9:30-10:00'>09:30-10:00</option>");
                                                                }
                                                                %>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select City</label>
							<select  name="city" required="" class="form-control">
								 <%
                                                       if(citys.equals("jallandhar")) {
								
								out.print("<option value='jallandhar' selected>Jalandhar</option>");
								out.print("<option value='amristar'>Amristar</option>");
								out.print("<option value='lud'> Ludhiana</option>");
								out.print("<option value='chand'>Chandigarh</option>");
                                                       }
                                                       else if (citys.equals("amristar")) {
								
								out.print("<option value='jallandhar' >Jalandhar</option>");
								out.print("<option value='amristar' selected>Amristar</option>");
								out.print("<option value='lud'> Ludhiana</option>");
								out.print("<option value='chand'>Chandigarh</option>");
                                                       }
                                                        else if (citys.equals("lud")) {
								
								out.print("<option value='jallandhar' >Jalandhar</option>");
								out.print("<option value='amristar' selected>Amristar</option>");
								out.print("<option value='lud' selected> Ludhiana</option>");
								out.print("<option value='chand'>Chandigarh</option>");
                                                       }
                                                       
                                                       else {
								
								out.print("<option value='jallandhar' >Jalandhar</option>");
								out.print("<option value='amristar' selected>Amristar</option>");
								out.print("<option value='lud' selected> Ludhiana</option>");
								out.print("<option value='chand' selected>Chandigarh</option>");
                                                       }
                                                       %>
                                                       
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select Speciality</label>
							<select  name="special" required="" class="form-control">
                                                          
                                                         <%
                                                       if(specials.equals("dermatology")) {
								
								out.print("<option value='dermatology' selected>Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General'> Genaral Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else if(specials.equals("ENT")) {
								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT' selected>ENT</option>");
								out.print("<option value='General'> Genaral Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else if (specials.equals("General")) {
								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General' selected> Genaral Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else  {
								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General'> Genaral Medicine</option>");
								out.print("<option value='nutritionist' selected >Nutritionist</option>");
                                                                }
                                                       %>
							</select>
						</div>
						<input type="submit"  name="submitbtn" value="Update Appointment" class="btn_apt">
					</form>
				</div>
				<div class="clerafix"></div>
			</div>
		</div>
	</div>
    
         <%@include file="footer.jsp" %>
  
  
</body>

 
</html>
   
    
    