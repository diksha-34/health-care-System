
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
     <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
        <style>
             body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            
        }

        .profile-container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .profile-image {
            max-width: 100%;
            height: 100px;
            border-radius: 50%;
        }

        .upload-button {
            margin-top: 10px;
        }

        input[type="file"] {
            display: none;
        }

        .profile-details {
            margin-top: 20px;
        }

        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .update-button {
            background-color: lightblue;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        
        </style>
        
</head>
<body>
    <%@include file="headerprofile.jsp" %>
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
				<li class="breadcrumb-item active" aria-current="page">Patient Profile</li>
			</ol>
		</div>
	</div>
    <div class="profile-container">
        <center>
            <form class="login-form">
        <h1>Your Profile</h1>
        <br>
        <img src="images/avtar.jpeg" alt="Profile Picture" class="profile-image" id="profile-image">
        <div class="upload-button">
            <label for="image-upload" class="update-button">Upload Image</label>
            <input class="profile-image" type="file" id="image-upload" accept="image/*">
        </div>
        </center>
        <div class="profile-details">
            <strong> <label for="name">Name:</label> </strong>
           
            <%
                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                         
                        }
                                     %>
                                     <br>
                                     <br>
                                     <strong>  <label for="email">Email:</label> </strong>
             <%
                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("email").toString());
                         
                        }
                                     %>
                                     <br>
                                     <br>
          <strong>  <label for="name">Hospital Name:</label> </strong>
            Medic
            <br>
            <br>
           <strong> <label for="email">Hospital Address:</label> </strong>
           The Hospital name Lorem ipsum dolor,New York,Morris Park.
           
        </div>
                                     <br>
                                     <center>                    
                                         <input class="update-button" type="submit" name="update" value="Update Profile"></input>
                                          
                                     </center>
                                     <% 
                                           if(request.getParameter("update")!=null){
                                               response.sendRedirect("userlogin.jsp");
                                           }
                                           %>
                                          
             </form>
    </div>
                                           <br>
    <%@include file="footer.jsp" %>
      <script>
       
        document.getElementById('image-upload').addEventListener('change', function () {
            const image = document.getElementById('profile-image');
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    image.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
        
    </script>
</body>
</html>
