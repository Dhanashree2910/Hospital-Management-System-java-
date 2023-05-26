import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
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


@WebServlet("/remark1")

public class remark1 extends HttpServlet {
    
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
           String userid = req.getParameter("userid");
            String doc_id = req.getParameter("doc_id");
            String remark = req.getParameter("remark");
          
           
                     HttpSession session=req.getSession(true);  
      
            pst = con.prepareStatement("insert into remark(userid,doc_id,remark)values(?,?,?) ");
           pst.setString(1, userid);
              pst.setString(2,doc_id);
            pst.setString(3,remark);
            
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