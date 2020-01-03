<%@page import="MyPack.DBManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String ques=request.getParameter("txtques");
if(session.getAttribute("user")!=null)
{
    String userid=session.getAttribute("user").toString();
    SimpleDateFormat sm=new SimpleDateFormat();
    String dt=sm.format(new Date());
    String command="insert into question values('"+ques+"','"+userid+"','"+dt+"')";
    DBManager dm=new DBManager();
    if(dm.ExecuteInsertUpdateOrDelete(command))
    {
        out.print("<script>alert('Question Posted Successfully');window.location.href='discussion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question not posted.');window.location.href='discussion.jsp';</script>");
    }
    
}
%>