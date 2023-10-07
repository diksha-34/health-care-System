<%@page import="java.sql.*" %>
<%@include file="vars.jsp" %>


<%
    if(request.getParameter("email") != null){
String email1 = request.getParameter("email");
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
    try {
        PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM usertable WHERE email1 = ?");
        mystatement.setString(1, email1);
        ResultSet myresult = mystatement.executeQuery();

        if (myresult.next()) {
           out.print("Email Id Already Exist");
        } else { 
        out.print("UserName is Available");
           
        }
    } catch (Exception e) {
        out.print("<label class='col-form-label'>" + "Error in query due to " + e.getMessage() + "</label>");
    }
} catch (Exception e) {
    out.print("<label class='col-form-label'>" + "Error in Connection due to " + e.getMessage() + "</label>");
}
    }
    

else if (request.getParameter("special") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM doctor WHERE specials=?");
            mystatement.setString(1,request.getParameter("special"));
         session.setAttribute("special",request.getParameter("special") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Email</td>" 
                        + "<td>Gender</td>"
                        + "<td>Phone</td>" 
                        + "<td>Degree</td>"    
                        + "<td>Speciality</td>"
                       + "<td>Designation</td>" 
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("email1") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("degree") + "</td>"  
                            + "<td>" + myresult.getString("specials") + "</td><td>"+
                            myresult.getString("designation") + "</td>"                    
                        + "<td><a href=updateapp.jsp?doctorid=" + myresult.getString("doctorid") + "><img src='images/update1.png'></a></td>"
                        + "<td><a href='#' class='specl' specl1=" + myresult.getString("doctorid") + "><img src='images/delete.png'></a></td>"
                         + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for specialist</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
      
}
    
    else if (request.getParameter("doctor") != null) {
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM appointment WHERE doctor1=?");
            mystatement.setString(1,request.getParameter("doctor"));
         session.setAttribute("doctor",request.getParameter("doctor") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Email</td>" 
                        + "<td>Gender</td>"
                        + "<td>Doctor</td>"    
                        + "<td>Appointment Date</td>"
                       + "<td>Appointment Time</td>" 
                       + "<td>City</td>"
                       + "<td>Speciality</td>" 
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("email1") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td><td>"
                            + myresult.getString("doctor1") + "</td>"
                            + "<td>" + myresult.getString("date") + "</td>"  
                            + "<td>" + myresult.getString("time") + "</td><td>"+
                            myresult.getString("city") + "</td>"
                            + "<td>" + myresult.getString("special") + "</td>"
                        + "<td><a href=updatepatient.jsp?patientid=" + myresult.getString("patientid") + "><img src='images/update1.png'></a></td>"
                        + "<td><a href='#' class='doc' doc1=" + myresult.getString("patientid") + "><img src='images/delete.png'></a></td>"
                         + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for patient Appointment</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
}

    else if (request.getParameter("sample") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM lab WHERE sample=?");
            mystatement.setString(1,request.getParameter("sample"));
         session.setAttribute("sample",request.getParameter("sample") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Email</td>" 
                        + "<td>Patient Id</td>"
                        + "<td>Phone</td>" 
                        + "<td>Gender</td>"    
                        + "<td>Sample</td>"
                       + "<td>Date</td>" 
                        + "<td>Time</td>"
                       + "<td>City</td>" 
                        + "<td>Disease</td>"
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("email1") + "</td>"
                            + "<td>" + myresult.getString("patientsid") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td>"  
                            + "<td>" + myresult.getString("sample") + "</td><td>"+
                            myresult.getString("date") + "</td>"
                            + "<td>" + myresult.getString("time") + "</td><td>"+
                            myresult.getString("city") + "</td>" 
                             + "<td>" + myresult.getString("disease") + "</td>"+
                        "<td><a href=updatelab.jsp?ids=" + myresult.getString("ids") + "><img src='images/update1.png'></a></td>"
                        + "<td><a href='#' class='samp' samp1=" + myresult.getString("ids") + "><img src='images/delete.png'></a></td>"
                         + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for sample</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
      
}
    else if (request.getParameter("sample") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM lab WHERE sample=?");
            mystatement.setString(1,request.getParameter("sample"));
         session.setAttribute("sample",request.getParameter("sample") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Email</td>" 
                        + "<td>Patient Id</td>"
                        + "<td>Phone</td>" 
                        + "<td>Gender</td>"    
                        + "<td>Sample</td>"
                       + "<td>Date</td>" 
                        + "<td>Time</td>"
                       + "<td>City</td>" 
                        + "<td>Disease</td>"
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("email1") + "</td>"
                            + "<td>" + myresult.getString("patientsid") + "</td><td>"
                            + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("gender1") + "</td>"  
                            + "<td>" + myresult.getString("sample") + "</td><td>"+
                            myresult.getString("date") + "</td>"
                            + "<td>" + myresult.getString("time") + "</td><td>"+
                            myresult.getString("city") + "</td>" 
                             + "<td>" + myresult.getString("disease") + "</td>"+
                        "<td><a href=updatelab.jsp?ids=" + myresult.getString("ids") + "><img src='images/update1.png'></a></td>"
                        + "<td><a href='#' class='samp' samp1=" + myresult.getString("ids") + "><img src='images/delete.png'></a></td>"
                         + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for sample</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
      
}else if (request.getParameter("medical") != null) {
    
   
try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM medical WHERE issue=?");
            mystatement.setString(1,request.getParameter("medical"));
         session.setAttribute("medical",request.getParameter("medical") );
 
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive-sm text-center'>"
                        + "<table class='table table-hover table-bordered'>"
                        + "<tr>"
                        + "<td>Name</td>"
                        + "<td>Email</td>" 
                        + "<td>Phone</td>" 
                        + "<td>Gender</td>"    
                        + "<td>Patient Type</td>"
                       + "<td>Issue</td>" 
                        + "<td>City</td>"
                        + "<td>Date</td>"
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");

                       
                do {
                    out.print("<tr><td>" + myresult.getString("name1") + "</td><td>"
                            + myresult.getString("email1") + "</td>"
                            + "<td>" + myresult.getString("phone") + "</td><td>"
                            + myresult.getString("gender1") + "</td>"
                            + "<td>" + myresult.getString("patienttype") + "</td>"  
                            + "<td>" + myresult.getString("issue") + "</td><td>"+
                            myresult.getString("city") + "</td>" 
                             + "<td>" + myresult.getString("date") + "</td>"+
                        "<td><a href=updatemedical.jsp?medicalid=" + myresult.getString("medicalid") + "><img src='images/update1.png'></a></td>"
                        + "<td><a href='#' class='iss' iss1=" + myresult.getString("medicalid") + "><img src='images/delete.png'></a></td>"
                         + "</tr>");
                } while (myresult.next());

                 
            } else {
                out.print("<div>No records found for Issue</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
      
}
    
               
    %>
    
    <script type="text/javascript">
    $(document).ready(function(){
         $(".specl").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var special1 = $(this).attr("specl1");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data:{special : special1}
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                       $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
         });
        
         $(".doc").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var doctor1 = $(this).attr("doc1");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data:{doctor : doctor1 }
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                       $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
        $(".samp").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var sample1 = $(this).attr("samp1");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data:{sample : sample1 }
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                       $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
        $(".iss").click(function(e){
            e.preventDefault();
            var answer = confirm("Do you really want to delete?");
            if (answer) {
                var parenttr = $(this).parent().parent();
                var issue1 = $(this).attr("iss1");
                $.ajax({
                    method: "POST",
                    url: "myajax2.jsp",
                    data:{issue : issue1 }
                })
                .done(function(msg){
                    if ($.trim(msg) === "1") {
                       $(parenttr).css("background-color","red");
                $(parenttr).slideUp(500,function(){
                     $(parenttr).remove();
                });
                    }
                });
            }
        });
    });
    </script>