<%@page import="MyPack.DBManager"%>
<%
String noti=request.getParameter("notice");
String command="delete from notification where notice='"+noti+"'";
DBManager db=new DBManager();
if(db.ExecuteInsertUpdateOrDelete(command))
{
    out.print("<script>alert('Record Deleted Successfuly.');window.location.href='AddNoti.jsp';</script>");
}
else
    
    out.print("<script>alert('Record not deleted because database error.');window.location.href='AddNoti.jsp';</script>");
%>