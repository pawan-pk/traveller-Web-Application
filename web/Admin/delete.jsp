<%@page import="MyPack.DBManager"%>
<%
String email=request.getParameter("user");
out.print(email);
String command="delete from registration1 where email='"+email+"'";
DBManager db=new DBManager();
if(db.ExecuteInsertUpdateOrDelete(command))
{
    out.print("<script>alert('Record Deleted Successfuly.');window.location.href='CustomerManegement.jsp';</script>");
}
else
    
    out.print("<script>alert('Record not deleted because database error.');window.location.href='CustomerManegement.jsp';</script>");
%>