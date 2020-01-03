<%@page import="MyPack.DBManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String email=session.getAttribute("user").toString();
String name=request.getParameter("txtname");
String msg=request.getParameter("txtmsg");
 String command="insert into support values('"+name+"','"+email+"','"+msg+"')";
 DBManager db=new DBManager();
 boolean x=db.ExecuteInsertUpdateOrDelete(command);
 if(x==true)
 {
     out.print("<script>alert('Message sended successfully.');window.location.href='Support.jsp';</script>");
 }
 else
 {
     out.print("<script>alert('Message not sended.');window.location.href='Support.jsp';</script>");
 }
%>