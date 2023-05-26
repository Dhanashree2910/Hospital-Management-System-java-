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


@WebServlet("/emp1")

public class emp1 extends HttpServlet {
    
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
            String id = req.getParameter("id");
            String studname = req.getParameter("name");
            String studemail = req.getParameter("email");
            String studpassword= req.getParameter("password");
            String typedoc= req.getParameter("typedoc");

            pst = con.prepareStatement("insert into register(id,name,email,password,typedoc)values(?,?,?,?,?) ");
            pst.setString(1, id);
            pst.setString(2, studname);
            pst.setString(3, studemail);
            pst.setString(4, studpassword);
           
             pst.setString(5, typedoc);
            row = pst.executeUpdate();
            
            out.println("<font color='green'  size='5px'>  Record Added   </font>");
            out.println("<br><br><br>");
            out.println("<a href='index.html'"
                    + ""
                    + "><font size='5px'>  BACK</a>   </font>");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(employee.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}