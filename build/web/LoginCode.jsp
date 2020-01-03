<%@page import="MyPack.EncryptionManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%
        String inuser=request.getParameter("txtuser");
        String inpass=request.getParameter("txtpass");
        EncryptionManager em=new EncryptionManager();
        DBManager dm=new DBManager();
        String command="select * from login where userid='"+inuser+"' and passwd='"+em.EncryptData(inpass)+"'";
        ResultSet rs=dm.GetBulksRecord(command);
        String user="",pass="",UserType="";
        
        if(rs.next())
        {
            user=rs.getString("userid");
            pass=rs.getString("passwd");
            UserType=rs.getString("utype");
            
            if(user.equals(inuser))
            {
                if(pass.equals(em.EncryptData(inpass)))
                {
                    if(UserType.equals("user"))
                    {
                        //process for user zone
                        session.setAttribute("user", user);
                        response.sendRedirect("User/Dashboard.jsp");
                    //out.print("<script>alert('Hellow "+user+" ! You are login successfully.');window.location.href='MyProfile.jsp?user="+user+"'</script>");
                    }
                    else if(UserType.equals("admin"))
                    {
                        //process for user zone
                        session.setAttribute("aid", user);
                        response.sendRedirect("Admin/DashBoard.jsp");
                    }
                        
                }
                else
                {
                    out.print("window.location.href='Login.jsp';<script>alert('Incurrect Password.');</script>");
                }
            }
            else
            {
                out.print("window.location.href='Login.jsp';<script>alert('Incurrect User Id.');</script>");
            }
        }
%>