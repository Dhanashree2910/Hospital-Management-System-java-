/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Prathamesh
 */
@WebServlet(urlPatterns = {"/loginadmin"})
public class loginadmin extends HttpServlet {
  private int id;
         public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
        public String toString() {
		return "UserDtls [id=" + id + "]";
	}
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out =response.getWriter();
       
        String password = request.getParameter("password");
         String id = request.getParameter("id");
       
        try{
              Class.forName("com.mysql.jdbc.Driver");
          Connection   con = DriverManager.getConnection("jdbc:mysql://localhost/collegeapp","root","");
      
          Statement stm = con.createStatement();
          ResultSet rs=stm.executeQuery("select * from adminlogin  where id='"+id+"' and password='"+password+"'");
   
          if(rs.next()){ 
               
                
                HttpSession session=request.getSession(true);  
                session.setAttribute("id",id);  
                 
           
              
              
            

              RequestDispatcher rd=request.getRequestDispatcher("Addashboard.jsp");  
        rd.forward(request,response);  
              
          }else{
              out.println("<font color='green'  size='5px'> WRONG ID OR PASSWORD   </font>");
              out.println("<br><br><br>");
           out.println("<a href='index.html'"
                    + ""
                    + "><font size='5px'>  BACK</a>   </font>");

          }
          con.close();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    
}
