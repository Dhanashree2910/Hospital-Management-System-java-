import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/addschedule")

public class addschedule extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    int row;
    
    public void doPost(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/collegeapp","root","");
           String name = req.getParameter("name");
            String date = req.getParameter("date");
            String time = req.getParameter("time");
          
            String typedoc= req.getParameter("typedoc");
                     HttpSession session=req.getSession(true);  
            String doc_id = (String)session.getAttribute("id");


            pst = con.prepareStatement("insert into schedule(doc_id,name,date,time,typedoc)values(?,?,?,?,?) ");
            pst.setString(1, doc_id);
            pst.setString(2,name);
            pst.setString(3, date);
            pst.setString(4, time);
           
           
             pst.setString(5, typedoc);
            row = pst.executeUpdate();
            
            out.println("<font color='green'  size='5px'>  Record Added   </font>");
            out.println("<br><br><br>");
            out.println("<a href='admindashboard.jsp'"
                    + ""
                    + "><font size='5px'>  BACK</a>   </font>");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employee.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}