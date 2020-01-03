/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pawan acer
 */
@WebServlet(name = "codeSignUp", urlPatterns = {"/codeSignUp"})
public class codeSignUp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet codeSignUp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet codeSignUp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String Name=request.getParameter("fname");
        String Email=request.getParameter("email");
        String MobileNo=request.getParameter("mobile");
        String UserName=request.getParameter("userName");
        String Pass=request.getParameter("password");
        String CPass=request.getParameter("cpassword");
        SimpleDateFormat sm=new SimpleDateFormat("dd-MM-yyyy");
        String SignUpDate=sm.format(new Date());
        PrintWriter out = response.getWriter();
        //create object of EncryptionManager class.
        EncryptionManager en=new EncryptionManager();
        if(Pass.equals(CPass)==true)
        {
            String Password=en.EncryptData(Pass);
            String command="insert into signup values('"+Name+"','"+Email+"','"+MobileNo+"','"+UserName+"','"+Password+"','"+SignUpDate+"')";
            out.print("<script>alert("+command+")</script>");
            //create object for database maneger
            DBManager db=new DBManager();
            boolean res=db.ExecuteInsertUpdateOrDelete(command);
            if(res==true)
               {
               out.print("<script>alert('Welcome "+Name+" ! You are Sign Up successfully.');window.location.href='MyProfile.jsp'</script>");
               }
                   else
               {
               out.print("<script>alert('Sorry ! Sign Up Failed.');window.location.href='index.jsp'</script>");
               }
        }
        else
            out.print("<script>alert('Password not match.');window.location.href='MasterPage/Header.jsp'</script>");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
