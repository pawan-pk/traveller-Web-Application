<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MyPack.DBManager"%>
<%
String zone=request.getParameter("zone");
String notice=request.getParameter("notice");
SimpleDateFormat sd=new SimpleDateFormat("dd-MM-yyyy");
String dt=sd.format(new Date());
DBManager db=new DBManager();
String command="insert into notification values('"+notice+"','"+dt+"','"+zone+"')";
boolean x=db.ExecuteInsertUpdateOrDelete(command);
if(x==true)
{
    out.print("<script>alert('Notification Saved Successfully.');window.location.href='AddNoti.jsp';</script>");
}
else
{
    out.print("<script>alert('Notification not saved.');window.location.href='AddNoti.jsp';</script>");
}
%>