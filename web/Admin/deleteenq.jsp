<%@page import="MyPack.DBManager"%>
<%
String email=request.getParameter("email");
String command="delete from enquiry where email='"+email+"'";
DBManager db=new DBManager();
if(db.ExecuteInsertUpdateOrDelete(command))
{
    out.print("<script>alert('Record Deleted Successfuly.');window.location.href='enquirymgnt.jsp';</script>");
}
else
    
    out.print("<script>alert('Record not deleted because database error.');window.location.href='enquirymgnt.jsp';</script>");
%>