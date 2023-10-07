
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
    <%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>

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
				<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
			</ol>
		</div>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<div class="agileits-contact py-5">
		<div class="py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Contact Us</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				
			</div>
			<div class="d-flex">
				<div class="col-lg-5 w3_agileits-contact-left">
				</div>
				<div class="col-lg-7 contact-right-w3l">
					<h5 class="title-w3 text-center mb-5">Get In Touch</h5>
                                         <%
 if(request.getParameter("submit")!=null) 
 {
 Properties props = new Properties();
 props.put("mail.smtp.host", "smtp.office365.com");
 props.put("mail.smtp.socketFactory.port", "587");
 props.put("mail.smtp.socketFactory.class",
 "javax.net.ssl.SSLSocketFactory");
 props.put("mail.smtp.auth", "true");
 props.put("mail.smtp.port", "587");
 props.put("mail.smtp.starttls.enable", "true");
 props.put("mail.smtp.ssl.trust", "*");
 props.put("mail.smtp.ssl.protocols", "TLSv1.2");

 Session session2 = Session.getInstance(props,
 new javax.mail.Authenticator() {
 protected PasswordAuthentication getPasswordAuthentication() {
 return new PasswordAuthentication("dikshaschoolproject@outlook.com","diksha@123");
 }
 });
 try {
 Message message = new MimeMessage(session2);
 message.addHeader("Content-type", "text/html; charset=UTF-8");
 message.setFrom(new InternetAddress("dikshaschoolproject@outlook.com"));
 message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("dikshavashist2007@gmail.com"));
 message.setSubject(request.getParameter("subject"));

 message.setText("Name : " + request.getParameter("name") + "\nEmailid : "+ request.getParameter("email") 
 + "\nPhone :" + request.getParameter("phone") + "\nMessage : " + request.getParameter("message"));




 Transport.send(message);
 out.print("Mail has been sent successfully");

 }
 catch(Exception e)
 {
 out.println("Mail does not work due to " + e.getMessage());
 }
 
 
 
 }
 
 
 %>
					<form action="#" method="post">
						<div class="d-flex space-d-flex">
							<div class="form-group grid-inputs">
								<input type="text" class="name form-control" name="name" placeholder="Name" required="">
							</div>
							<div class="form-group grid-inputs">
								<input type="text" class="name form-control" name="phone" placeholder="phone" required="">
							</div>
						</div>
						<div class="form-group">
							<input type="email" class="name form-control" name="email" placeholder="Email" required="">
						</div>
						<div class="form-group">
							<input type="text" class="name form-control" name="Subject" placeholder="Subject" required="">
						</div>

						<div class="form-group">
							<textarea placeholder="Your Message" required="" name="message" class="form-control"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" name="submit" value="Send Message">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->

	<!-- Map -->
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.5130900428026!2d44.506621715459396!3d40.17539347939393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406abcf86e940951%3A0x87a1923d7df42367!2sBest+Western+Congress+Hotel!5e0!3m2!1sen!2sin!4v1509605601510"></iframe>
	</div>
	<!-- //Map -->
<%@include file="footer.jsp" %>
</body>
</body>

</html>