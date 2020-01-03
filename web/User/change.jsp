<%@page import="MyPack.DBManager"%>
<%@page import="MyPack.EncryptionManager"%>
<%
String oldpass=request.getParameter("txtold");
String newpass=request.getParameter("txtnew");
String confirmpass=request.getParameter("txtconfirm");

EncryptionManager em=new EncryptionManager();
//for encryption of password
String old=em.EncryptData(oldpass);
String newp=em.EncryptData(newpass);
//match password
if(newpass.equals(confirmpass))
{
    //Update login table to change password
    String email=session.getAttribute("user").toString();
    String command="update login set passwd='"+newp+"' where userid='"+email+"' and passwd='"+old+"'";
    DBManager dm=new DBManager();
    boolean x=dm.ExecuteInsertUpdateOrDelete(command);
    if(x==true)
    {
        out.print("<script>alert('Your Password Changed Successfully.');window.location.href='../Login.jsp'</script>");
    }
    else
    {
        out.print("<script>alert('Your Password not Changed.');window.location.href='ChangePassword.jsp'</script>");
    }
    
}
else
{
    out.print("<script>alert('Please Confirm Password')</script>");
}
%>