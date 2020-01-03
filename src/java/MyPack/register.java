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
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
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
        String OriCaptcha=request.getParameter("mCaptcha");
        String EnCaptcha=request.getParameter("captcha");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        String passwd=request.getParameter("pass");
        String cpasswd=request.getParameter("cpass");
        String pin=request.getParameter("pin");
 
        SimpleDateFormat sm=new SimpleDateFormat();
        String dt=sm.format(new Date());
        
        //get file and save into folder
        
        Part profile=request.getPart("pic");
        String fileName=profile.getSubmittedFileName();
            InputStream is=profile.getInputStream();
            File file=new File(request.getRealPath("/profiles"),(email+fileName));
            PrintWriter out=response.getWriter();
            EncryptionManager em=new EncryptionManager();
            String newPass=em.EncryptData(passwd);
            //End here file
            //Write commond for registration
            String command1="insert into registration1 values('"+name+"','"+fname+"','"+dob+"','"+gender+"','"+mobile+"','"+email+"','"+city+"','"+address+"','"+newPass+"','"+pin+"','"+(email+fileName)+"','"+dt+"')";
            //Write for commond for login
            String command2="insert into login values('"+email+"','"+newPass+"','user')";
            DBManager dm=new DBManager();
            //Match Captcha
            if(OriCaptcha.equals(EnCaptcha))
            {
                //Match Password
                if(passwd.equals(cpasswd))
                {
                //execute first commond
                    boolean x=dm.ExecuteInsertUpdateOrDelete(command1);
                    if(x==true)
                    {
                        boolean y=dm.ExecuteInsertUpdateOrDelete(command2);
                        if(y==true)
                        {
                            //Save Profile Picture in Data base
                            Files.copy(is,file.toPath());
                            out.print("<script>alert('Registration Completed Successfully');window.location.href='index.jsp'</script>");
                        }
                        else
                        {
                            out.print("<script>alert('Registration Not Completed');window.location.href='registration.jsp?it=4'</script>");
                        }
                    }
                    else
                    {
                        out.print("<script>alert('Registration Not Completed');window.location.href='registration.jsp?it=3'</script>");
                    }
                }
                else
                {
                    out.print("<script>alert('Password Not Match');window.location.href='registration.jsp?it=2'</script>");
                }
            }
            else
            {
                out.print("<script>alert('Captcha Not Match');window.location.href='registration.jsp?it=1'</script>");
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
