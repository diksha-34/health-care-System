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
              String doctorids = request.getParameter("doctorid");
             String name1="", email1="", gender1="",phones="",designation="",degres="",specials="";
             
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from doctor where doctorid=?");
            mystatement.setString(1,doctorids);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                name1 = myresult.getString("name1");
                email1 = myresult.getString("email1");
                phones = myresult.getString("phone");
                gender1 = myresult.getString("gender1");
                designation = myresult.getString("designation");
                degres = myresult.getString("degree");
                 specials = myresult.getString("specials");
               
                
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
					<h5 class="title-w3 text-center mb-5">Update the Doctor</h5>
                                        
         <%
            if(request.getParameter("submitbtn")!=null){
               
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
                            PreparedStatement mystatement = myConnection.prepareStatement("update doctor set name1=?," + " email1=?, gender1=?, phone=?, designation=?, degree=?, specials=?");
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, gender1);
                            mystatement.setString(4, phones);
                            mystatement.setString(5, designation);
                            mystatement.setString(6, degres);
                          mystatement.setString(7, specials);
                            
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Update Doctor Detail</label>");
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
							<input type="text" class="form-control" placeholder="Doctor Name " name="name" id="recipient-name" required=" "value="<%= name1 %>">
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label"> Email</label>
							<input type="email" class="form-control" placeholder="Email" name="email" id="recipient-phone" required="" value="<%= email1 %>">
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
                                                    </div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label"> Phone</label>
							<input type="text" class="form-control" placeholder="phone" name="phone" id="recipient-phone" required="" value="<%= phones %>" >
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Designation</label>
							<input type="text" class="form-control" placeholder="eg. consultant doctor,head of department" name="desig" id="recipient-phone" required="" value="<%= designation %>"> 
						</div>
						<div class="form-group">
							<label for="recipient-phone" class="col-form-label">Degree</label>
							<input type="text" class="form-control" placeholder="eg. MBBS,MD" name="degree" id="recipient-phone" required="" value="<%= degres %>">
						</div>
						<div class="form-group">
							<label for="datepicker" class="col-form-label">Select Speciality</label>
							<select  name="special" required="" class="form-control">
                                                         <%
                                                       if(specials.equals("dermatology")) {
								
								out.print("<option value='dermatology' selected>Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General'> General Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else if
                                                       (specials.equals("ENT")) {
								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT' selected>ENT</option>");
								out.print("<option value='General '> General Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else if (specials.equals("General")) {
								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General' selected> General Medicine</option>");
								out.print("<option value='nutritionist' >Nutritionist</option>");
                                                                }
                                                       else {								
								out.print("<option value='dermatology' >Dermatology</option>");
								out.print("<option value='ENT'>ENT</option>");
								out.print("<option value='General'> General Medicine</option>");
								out.print("<option value='nutritionist' selected >Nutritionist</option>");
                                                                }
                                                       %>
							</select>
						</div>
						<input type="submit"  name="submitbtn" value="Update Doctor" class="btn_apt">
					</form>
				</div>
				<div class="clerafix"></div>
			</div>
		</div>
	</div>
        
        
        
        
        
        
         <%@include file="footer.jsp" %>
  
  
</body>

 
</html>
   
    
    