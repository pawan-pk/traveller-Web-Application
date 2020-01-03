<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MyPack.DBManager"%>
<%
String name=request.getParameter("txtname");
String mobile=request.getParameter("txtmo");
String email=request.getParameter("txtemail");
SimpleDateFormat sd=new SimpleDateFormat("dd-MM-yyyy");
String edt=sd.format(new Date());
String command="insert into enquiry values('"+name+"','"+mobile+"','"+email+"','"+edt+"')";
DBManager db=new DBManager();
boolean x=db.ExecuteInsertUpdateOrDelete(command);
if(x==true)
{
    out.print("<script>alert('Record Saved Successufully.');window.location.href='enquiry.jsp';</script>");
}
else
{
    out.print("<script>alert('Record not saved.');window.location.href='enquiry.jsp';</script>");
}
%>