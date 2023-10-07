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
                                <li class="breadcrumb-item active" aria-current="page">Doctor</li>
			</ol>
		</div>
	</div>
        
        <%
              String ids = request.getParameter("ids");
              String name1="", email1="", gender1="",patient="",dates="",Time="",citys="",sample="",phones="",diseases="";
             
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from lab where ids=?");
            mystatement.setString(1,ids);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                name1 = myresult.getString("name1");
                email1 = myresult.getString("email1");
                phones = myresult.getString("phone");
                gender1 = myresult.getString("gender1");
                patient = myresult.getString("patientsid");
                sample= myresult.getString("sample");
                 Time= myresult.getString("time");
                  citys= myresult.getString("city");
                 diseases= myresult.getString("disease");
                 dates= myresult.getString("date");
                 
                 
                 
               
                
            } else {
                out.print("Wrong lab");
            }
        } catch (Exception e) {
            out.print("Error in Connection or Query due to " + e.getMessage());
        }

            %>
        <div class="d-flex">
				<div class="appoint-img">

				</div>
				<div class="contact-right-w3l appoint-form">
					<h5 class="title-w3 text-center mb-5">Update Lab patient</h5>
                                        
         <%
            if(request.getParameter("submitbtn")!=null){
               
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
                            PreparedStatement mystatement = myConnection.prepareStatement("update lab set name1=?, email1=?, patientsid=?, phone=?, gender1=?, sample=?, date=?, time=?, city=?, disease=? where ids=?");
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, patient);
                            mystatement.setString(4, phones);
                            mystatement.setString(5, gender1);
                            mystatement.setString(6, sample);
                          mystatement.setString(7, dates);
                            mystatement.setString(8, Time);
                          mystatement.setString(9,citys);
                            mystatement.setString(10, diseases);
                             mystatement.setString(11, ids);
                          
                            
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Update Lab Detail of Patient</label>");
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
							<input type="text" class="form-control" placeholder="Patient Name " name="name" id="recipient-name" required="" value="<%= name1 %>">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Patient Email</label>
							<input type="email" class="form-control" placeholder="Your Email" name="email" id="recipient-phone" required="" value="<%= email1 %>">
						</div>
                                                
                                               <div class="form-group">
                                                             <label  for="recipient-id"  class="col-form-label">Patient ID</label>
                                                            <input type="text" class="form-control" placeholder="Patient ID " name="patientid" id="recipient-id" required="" value="<%= patient %>">         
                                                                                                                                                                           
                                                                    </div>
                                            <div class="form-group">
							<label for="recipient-phone" class="col-form-label">Phone</label>
							<input type="text" class="form-control" placeholder="Phone" name="phone" id="recipient-phone" required="" value="<%= phones %>">
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
							<label for="datepicker" class="col-form-label">Select Sample Details</label>
							<select  name="sample" required="" class="form-control">
                                                            <% 
                                                                if(sample.equals("blood"))
                                                                {
								out.print("<option value='blood' selected>Blood</option>");
								out.print("<option value='urine'>Urine</option>");
								out.print("<option value='tissue'>Tissue</option>");
								out.print("<option value='swab'>Swab</option>");
								out.print("<option value='other'>Others</option>");
                                                                        }
                                                                else if(sample.equals("urine"))
                                                                {
								out.print("<option value='blood' >Blood</option>");
								out.print("<option value='urine'selected>Urine</option>");
								out.print("<option value='tissue'>Tissue</option>");
								out.print("<option value='swab'>Swab</option>");
								out.print("<option value='other'>Others</option>");
                                                                        }
                                                                 else if(sample.equals("tissue"))
                                                                {
								out.print("<option value='blood' >Blood</option>");
								out.print("<option value='urine'>Urine</option>");
								out.print("<option value='tissue'selected>Tissue</option>");
								out.print("<option value='swab'>Swab</option>");
								out.print("<option value='other'>Others</option>");
                                                                        }
                                                                 else if(sample.equals("swab"))
                                                                {
								out.print("<option value='blood' >Blood</option>");
								out.print("<option value='urine'>Urine</option>");
								out.print("<option value='tissue'>Tissue</option>");
								out.print("<option value='swab'selected>Swab</option>");
								out.print("<option value='other'>Others</option>");
                                                                        }
                                                                 else 
                                                                {
								out.print("<option value='blood' >Blood</option>");
								out.print("<option value='urine'>Urine</option>");
								out.print("<option value='tissue'>Tissue</option>");
								out.print("<option value='swab'>Swab</option>");
								out.print("<option value='other'selected>Others</option>");
                                                                        }
                                                                %>
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select Test date</label>
							<input placeholder="Date" class="date form-control" id="datepicker" type="date"  name="date" onfocus="this.value = '';"
							    onblur="if (this.value == '') {this.value = '';}" required="" value="<%= dates %>"/>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select appointment time</label>
							<select  name="time" required="" class="form-control">
                                                            <%
                                                                if(Time.equals("8:30-8:30"))
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
                                                       
                                                       else  {
								
								out.print("<option value='jallandhar' >Jalandhar</option>");
								out.print("<option value='amristar' selected>Amristar</option>");
								out.print("<option value='lud' selected> Ludhiana</option>");
								out.print("<option value='chand' selected>Chandigarh</option>");
                                                       }
                                                       %>
                                                       
							</select>
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Any medical Problem</label>
							<select  name="disease" required="" class="form-control">
                                                            <%
                                                               
                                                              if(diseases.equals("allergy"))
                                                              {
								out.print("<option value='allergy' selected>Allergy</option>");
								out.print("<option value='infectious'>Infectious diseases</option>");
								out.print("<option value='diabetes'>diabetes </option>");
								out.print("<option value='other diseases'>Other diseases</option>");
                                                                        }
                                                              else if(diseases.equals("infectious"))
                                                              {
								out.print("<option value='allergy'>Allergy</option>");
								out.print("<option value='infectious' selected>Infectious diseases</option>");
								out.print("<option value='diabetes'>diabetes </option>");
								out.print("<option value='other diseases'>Other diseases</option>");
                                                                        }
                                                              else if(diseases.equals("diabetes"))
                                                              {
								out.print("<option value='allergy' >Allergy</option>");
								out.print("<option value='infectious'>Infectious diseases</option>");
								out.print("<option value='diabetes'selected>diabetes </option>");
								out.print("<option value='other diseases'>Other diseases</option>");
                                                                        }
                                                               else
                                                              {
								out.print("<option value='allergy' >Allergy</option>");
								out.print("<option value='infectious'>Infectious diseases</option>");
								out.print("<option value='diabetes'>diabetes </option>");
								out.print("<option value='other diseases'selected>Other diseases</option>");
                                                                        }
                                                              %>
							</select>
						</div>
						<input type="submit"  name="submitbtn" value="Lab Appointment" class="btn_apt">
					</form>
				</div>
				<div class="clerafix"></div>
			</div>
		</div>
	
        
        
        
        
         <%@include file="footer.jsp" %>
  
  
</body>

 
</html>
   
    
    