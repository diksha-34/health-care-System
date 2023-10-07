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
         String id1 = request.getParameter("medicalid");
                String name1="", email1="", gender1="",citys="",medicals="",types="",phones="",dates="";
                try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myconnection.prepareStatement("select * from medical where medicalid=?");
            mystatement.setString(1,id1);

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                name1 = myresult.getString("name1");
                email1 = myresult.getString("email1");
                phones = myresult.getString("phone");
                gender1 = myresult.getString("gender1");
                types=myresult.getString("patienttype");
                medicals=myresult.getString("issue");
                citys= myresult.getString("city");
                dates= myresult.getString("Date");
                
            } else {
                out.print("Wrong Medical Detail");
            }
        } catch (Exception e) {
            out.print("Error in Connection or Query due to " + e.getMessage());
        }

           
        
        
        
        %>
        <div class="d-flex">
        <div class="appoint-img">

				</div>
				<div class="contact-right-w3l appoint-form">
					<h5 class="title-w3 text-center mb-5">Update Medical Issue patient</h5>
                                        
         <%
            if(request.getParameter("submitbtn")!=null){
               
                name1=request.getParameter("name");
                phones=request.getParameter("phone");
                email1=request.getParameter("email");
                dates=request.getParameter("date");
                gender1=request.getParameter("gender");
                medicals= request.getParameter("medical");
                citys= request.getParameter("city");
                types= request.getParameter("type");
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("update medical set name1=?, email1=?, phone=?, gender1=?, patienttype=?, issue=?, city=?, Date=? where medicalid=?");
                            
                            mystatement.setString(1, name1);
                            mystatement.setString(2, email1);
                            mystatement.setString(3, phones);
                            mystatement.setString(4, gender1);
                            mystatement.setString(5, types);
                            mystatement.setString(6, medicals);
                            mystatement.setString(7, citys);
                            mystatement.setString(8,dates);
                            mystatement.setString(9,id1);
                            
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Update Medical Issue of Patient</label>");
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
                                                                  <input type="email" class="form-control" placeholder="Your Email" name="email" id="recipient-phone" required=""value="<%= email1 %>">
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
                                                                      <label for="datepicker" class="col-form-label">Patient Type</label>
                                                                      <select name="type" class="form-control" >
                                                                          <%
                                                                     if(types.equals("normal")) {

                                                                       out.print("<option value='normal' selected>Normal</option>");
                                                                           out.print("<option value='policy'>Any Policy</option>");
                                                                                   }
                                                                     else {
                                                                         out.print("<option value='normal' >Normal</option>");
                                                                           out.print("<option value='policy'selected>Any Policy</option>");
                                                                     }
                                                                                   %>
                                                             </select>
                                                              </div>
                                                          <div class="form-group">
                                                                  <label for="datepicker" class="col-form-label">Select Medical Issue </label>
                                                                  <select  name="medical" required="" class="form-control">
                                                                      <%
                                                                          if(medicals.equals("OP")){
                                                                          out.print("<option value='OP' selected>Operative Report</option>");
                                                                          out.print("<option value='RCU'>Routine Check Up</option>");
                                                                          out.print("<option value='Medicine'>Medicine</option>");
                                                                          out.print("<option value='Admit'>Admit Patient</option>");
                                                                                  }
                                                                          else if(medicals.equals("RCU")){
                                                                          out.print("<option value='OP'>Operative Report</option>");
                                                                          out.print("<option value='RCU' selected>Routine Check Up</option>");
                                                                          out.print("<option value='Medicine'>Medicine</option>");
                                                                          out.print("<option value='Admit'>Admit Patient</option>");
                                                                                  }
                                                                          else if(medicals.equals("Medicine")){
                                                                          out.print("<option value='OP'>Operative Report</option>");
                                                                          out.print("<option value='RCU'>Routine Check Up</option>");
                                                                          out.print("<option value='Medicine' selected>Medicine</option>");
                                                                          out.print("<option value='Admit'>Admit Patient</option>");
                                                                                  }
                                                                          else {
                                                                          out.print("<option value='OP'>Operative Report</option>");
                                                                          out.print("<option value='RCU'>Routine Check Up</option>");
                                                                          out.print("<option value='Medicine'>Medicine</option>");
                                                                          out.print("<option value='Admit' selected>Admit Patient</option>");
                                                                                  }
                                                                                  %>

                                                                  </select>
                                                          </div>

                                          <div class="form-group">
                                                                  <label for="datepicker" class="col-form-label">Date</label>
                                                                  <input placeholder="Date" class="date form-control" id="datepicker" type="date"  name="date" onfocus="this.value = '';"
                                                                      onblur="if (this.value == '') {this.value = '';}" required="" value="<%= dates %>" />
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
                                                                          out.print("<option value='amristar' >Amristar</option>");
                                                                          out.print("<option value='lud' selected> Ludhiana</option>");
                                                                          out.print("<option value='chand'>Chandigarh</option>");
                                                                 }

                                                                 else{

                                                                          out.print("<option value='jallandhar' >Jalandhar</option>");
                                                                          out.print("<option value='amristar' >Amristar</option>");
                                                                          out.print("<option value='lud' > Ludhiana</option>");
                                                                          out.print("<option value='chand' selected>Chandigarh</option>");
                                                                 }
                                                                 %>

                                                                  </select>
                                                          </div>    
                                                          <input type="submit"  name="submitbtn" value=" Update Medical Issue" class="btn_apt">
                                                  </form>
                                          </div>
                                          <div class="clerafix"></div>
                                          </div>
          </div>




                   <%@include file="footer.jsp" %>


          </body>


          </html>
