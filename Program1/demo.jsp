
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java"%>
<%
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String contact=request.getParameter("contact");
        String occupation=request.getParameter("occupation");
        int year=Integer.parseInt(request.getParameter("year"));
        String select = request.getParameter("select");

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

         insert.setString(1,name);
         insert.setString(2,email);
         insert.setString(3,contact);
         insert.setString(4,occupation);
         insert.setInt(5,year);
         insert.setString(6,select);

        int a=insert.executeUpdate();
        if(a>0)
        {
         out.println("Record Added");
        }
        
         conn.close();
         stat.close();
         res.close();

       }
       catch(Exception e)
       {
         System.out.println(e);
       }
%>

