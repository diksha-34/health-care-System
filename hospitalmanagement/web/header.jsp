<% 
    String cookieName = "uname1";
    String cookieName2 = "adminname";
    
    Cookie cookies[]=request.getCookies();
    Cookie myCookie = null;
    boolean user = false, admin=false;
    
    if(cookies!=null){
    for(int i=0; i< cookies.length;i++)
    {
        
           if (cookies [i].getName().equals (cookieName))
        {
            myCookie = cookies[i];
            session.setAttribute("name", myCookie.getValue());
            user=true;
        }
        else if(cookies[i].getName().equals("emailid"))
        {
         session.setAttribute("emailid", cookies[i].getValue());
                user=true;
                
    }
    else if(cookies [i].getName().equals(cookieName2))
    {
    myCookie = cookies[i];
            session.setAttribute("adminname", myCookie.getValue());
            admin=true;
    }
    }
    }
        if(user==true)
   {
    response.sendRedirect("userlogin.jsp");
    }
    else if(admin==true)
    {
        response.sendRedirect("admin.jsp");
    }
%>
	

	<!-- header 2 -->
	<div id="home">
		<!-- navigation -->
		<div class="main-top py-1">
			<nav class="navbar navbar-expand-lg navbar-light fixed-navi">
				<div class="container">
					<!-- logo -->
					<h1>
						<a class="navbar-brand font-weight-bold font-italic" href="index.jsp">
							<span>M</span>edic
							<i class="fas fa-syringe"></i>
						</a>
					</h1>
					<!-- //logo -->
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
						<ul class="navbar-nav ml-lg-auto">
							<li class="nav-item active mt-lg-0 mt-3">
								<a class="nav-link" href="index.jsp">Home
									<span class="sr-only">(current)</span>
								</a>
							</li>
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="about.jsp">About Us</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
								    aria-haspopup="true" aria-expanded="false">
									Pages
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">

									<a class="dropdown-item scroll" href="#services">Services</a>
									<a class="dropdown-item" href="gallery.jsp">Gallery</a>
									<a class="dropdown-item scroll" href="#blog">Blog</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="single.jsp">Single Page</a>
								</div>
							</li>
							
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="contact.jsp">Contact Us</a>
							</li>
                                                        <li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="login.jsp">Login</a>
							</li>
                                                        <li class="nav-item">
								<a class="nav-link" href="register.jsp">Register</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
                                             
		
	</div>
	<!-- //header 2 -->
