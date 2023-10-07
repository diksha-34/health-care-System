

<%
    if(session.getAttribute("adminname")==null)
    {
    response.sendRedirect("login.jsp");
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
							<li class="nav-item active mt-lg-0 my-3">
								<a class="nav-link" href="index.jsp">Home
									<span class="sr-only">(current)</span>
								</a>
							</li>
							
						
                                                         <li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="logout.jsp">Logout</a>
							</li>
                                                         <li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
								    aria-haspopup="true" aria-expanded="false">
									list of patient
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">

									
									<a class="dropdown-item" href="appointmentlist.jsp">patient List</a>
                                                                        <a class="dropdown-item" href="medicallist.jsp">Medical Treatment patient</a>
									
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="lablist.jsp">Laboratory patient</a>
								</div>
                                                         </li>
                                                         
                                                         
                                                      
                                                         <li class="nav-item dropdown  mx-lg-4 my-lg-0 my-3">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
								    aria-haspopup="true" aria-expanded="false">
									Doctor Details
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">

									
									<a class="dropdown-item" href="adddoctor.jsp">Add doctor</a>
                                                                        <a class="dropdown-item" href="doctorlist.jsp">Doctor List</a>
									
									
                                                         </li> 
                                                        
                                                      
						</ul>
					</div>
				</div>
			</nav>
		</div>
                                             
		
	</div>
	<!-- //header 2 -->
