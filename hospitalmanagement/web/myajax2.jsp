<%@ page import="java.sql.*" %>
<%@ include file="vars.jsp" %>
<%
    if(request.getParameter("special")!=null)
    {
    String special = request.getParameter("special");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM doctor WHERE doctorid=?");
            mystatement.setString(1, special);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}
    
    else if(request.getParameter("doctor")!=null)
    {
    String doctor = request.getParameter("doctor");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM appointment WHERE patientid=?");
            mystatement.setString(1, doctor);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}
    
else if(request.getParameter("sample")!=null)
    {
    String sample = request.getParameter("sample");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM lab WHERE ids=?");
            mystatement.setString(1, sample);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}
    else if(request.getParameter("issue")!=null)
    {
    String issue = request.getParameter("issue");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM medical WHERE medicalid=?");
            mystatement.setString(1, issue);

             
            if ( mystatement.executeUpdate()> 0) {
                out.print("1"); // Successful deletion
            } else {
                out.print("0"); // No rows affected (could mean no record with the provided ID)
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); // Close the connection after use
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    
}
    


    %>