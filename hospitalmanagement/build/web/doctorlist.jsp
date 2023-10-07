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
        
    <div class="form-group">
   <section class="w3l-contact py-5" id="contact" >
    <div class="col-md-3 contact-right">
    <div class="input-grids">
        <div class="row justify-content-center">
            <form method="get">
               <div class="form-group">
                   <label for="datepicker" class="col-form-label"><h2>Select Speciality</h2></label>
                    <select  name="special" required="" class="form-control" id="spec">
                       <option value="">Select Speciality</option>

                        <% 
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                            PreparedStatement mystatement = myConnection.prepareStatement("SELECT distinct(specials) FROM doctor");
                            ResultSet myresult = mystatement.executeQuery();

                            while (myresult.next()) {
                                out.print("<option>" + myresult.getString("specials") + "</option>");
                            }
                        } catch (Exception e) {
                            out.print("Error in query or connection: " + e.getMessage());
                        }
                        %>
                    </select>
                    </div>
                    <br>

                    
               </div>
            </form>
        </div>
    </div>
</div>
<br> 
<br>

<div class="container"> 
    <div class="row justify-content-center"> 
        <div class="col-md-12" id="resultbox"></div>
    </div>
</div>
       <br><!-- comment -->
                   
   </section>
        
        
          <%@include file="footer.jsp" %>
  
  <script type="text/javascript">
    $(document).ready(function () {
        $("#spec").change(function () {
            var special1 = $(this).val();
            $.ajax({
                method: "POST",
                url: "myajax.jsp",
                data: { special: special1 }
            }).done(function (msg) {
                $("#resultbox").html(msg);
            });
        });
    });
</script>

</body>

 
</html>
   
    
    
    
     
