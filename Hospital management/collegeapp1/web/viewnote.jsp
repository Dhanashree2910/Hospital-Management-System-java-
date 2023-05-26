<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
          Connection   con = DriverManager.getConnection("jdbc:mysql://localhost/collegeapp","root","");
      
          Statement stm = con.createStatement();
          ResultSet rs=stm.executeQuery("select * from notes");
         
           while(rs.next())
            {
             out.println("<tr>");
             out.println("<td>"  + rs.getString("id")   +  "</td>");
             out.println("<td>"  + rs.getString("userid")   +  "</td>");
               out.println("<td>"  + rs.getString("notes")   +  "</td>");
             out.println("<td>"  + rs.getString("note_detail")   +  "</td>");  
              out.println("<td>"  + rs.getString("note_file")   +  "</td>");  
    }
%>
<html>
<head>
   <style>
      body{
      background-color: whitesmoke;
        
     }
     h4{
            font-size:25px;
             text-shadow: 0 0 3px #FF0000;
         }
         body{
      background-color: whitesmoke;
        
     }
   </style>
   </head>

                        </div>
                        


</body>
</html>