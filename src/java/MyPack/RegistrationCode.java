/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MyPack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Pawan acer
 */
@MultipartConfig
@WebServlet(name = "RegistrationCode", urlPatterns = {"/RegistrationCode"})
public class RegistrationCode extends HttpServlet {

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
            out.println("<title>Servlet RegistrationCode</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistrationCode at " + request.getContextPath() + "</h1>");
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
        String name=request.getParameter("name");
        String fname=request.getParameter("fname");
        String dob=request.getParameter("dob");
        String gender=request.getParameter("gender");
        String cap=request.getParameter("captcha");
        String mcap=request.getParameter("mCaptcha");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        String pass=request.getParameter("passwd");
        String cpass=request.getParameter("cpasswd");
        String pin=request.getParameter("pin");
        
        SimpleDateFormat sm=new SimpleDateFormat("dd-MM-yyyy");
        String regdate=sm.format(new Date());
        DBManager dm=new DBManager();
        EncryptionManager em=new EncryptionManager();
        PrintWriter out=response.getWriter();
        //Match Captcha
        if(cap.equals(mcap))
        {
            //Match Password
            if(pass.equals(cpass))
            {
                //coding here....
                //Get File Here
                Part picture=request.getPart("pic");
                String fileName=picture.getSubmittedFileName();
                InputStream is=picture.getInputStream();
                File file=new File(request.getRealPath("/profiles"),(name+fileName));
                //Command for Registration Insertion
                String Passwd=em.EncryptData(pass);
                String command="insert into registration values('"+name+"','"+fname+"','"+dob+"','"+gender+"','"+mobile+"','"+email+"','"+city+"','"+address+"','"+Passwd+"','"+pin+"','"+fileName+"','"+regdate+"')";
                boolean res=dm.ExecuteInsertUpdateOrDelete(command);
                if(res==true)
               {
                   //File upload here
                   Files.copy(is,file.toPath());
                   String utype="user";
                   String cmd="insert into login value('"+email+"','"+Passwd+"','"+utype+"')";
                   dm.ExecuteInsertUpdateOrDelete(cmd);
               out.print("<script>alert('Welcome "+name+" ! You are Sign Up successfully.');window.location.href='MyProfile.jsp'</script>");
               }
                   else
               {
               out.print("<script>alert('Sorry ! Registation Failed deu to server error.');window.location.href='registration.jsp'</script>");
               }
                //Command for Login Insertion
            }
            else
            {
                out.print("<script>alert('Password not match.');window.location.href='registration.jsp'</script>");
            }
        }
        else
        {
            out.print("<script>alert('Invalid Captcha Code.');window.location.href='registration.jsp'</script>");
        }
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
