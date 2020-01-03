<%@page import="MyPack.DBManager"%>
<%
    String title=request.getParameter("txttitle");
    String message=request.getParameter("txtmsg");
    if(session.getAttribute("user")!=null)
    {
        String email=session.getAttribute("user").toString();
        DBManager dm=new DBManager();
        String command="insert into Support values('"+title+"','"+email+"','"+message+"')";
        boolean x=dm.ExecuteInsertUpdateOrDelete(command);
        if(x==true)
        {
            out.print("<script>alert('feedback submitted successfully');window.location.href='Support.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('feedback not submitted');window.location.href='Support.jsp';</script>");
        }
    }
    else
    {
        
    }
%>