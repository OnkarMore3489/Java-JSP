<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page language="java"%>
<!DOCTYPE html>
<head>
<title>Registration</title>
</head>
<body>
 <%
        Connection conn = null;
        Statement stat = null;
        ResultSet res = null;
        PreparedStatement insert = null;
        Scanner input = new Scanner(System.in);
        try
        {
         Class.forName("org.postgresql.Driver");
         conn = DriverManager.getConnection("jdbc:postgresql://192.168.16.1/ty8844","ty8844","");
         insert = conn.prepareStatement("insert into alumni values(?,?,?,?,?,?)");
         if(conn==null)
         {
                System.out.println("Connection failed");
         }
         else
         {
                System.out.println("Connetion successful..");
         }
         stat = conn.createStatement();

      String y=request.getParameter("y");
      res = stat.executeQuery("select * from alumni where year_of_passing = "+y);
      while(res.next())
      {
      %>
      <table border="1">
       <tr><td><%out.print(res.getString(1));%></td>
       <td><%out.print(res.getString(2));%></td>
       <td><%out.print(res.getString(3));%></td>
       <td><%out.print(res.getString(4));%></td>
       <td><%out.print(res.getString(5));%></td>
       <td><%out.print(res.getString(6));%></td>
       </tr>
      </table>                    
      <% 
      }
     }
     catch(Exception e)
     {
     }
    %>
</body>
</html>
