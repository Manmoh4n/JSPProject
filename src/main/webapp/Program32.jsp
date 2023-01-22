<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
    <head>
        <title>SELECT Operation</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
            public void jspInit()
            {
                try
                {
                    Class.forName("org.postgresql.Driver");
                    con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mydb", "postgres", "password");
                    ps = con.prepareStatement("SELECT * FROM myschma.employee");
                }
                catch(Exception ex)
                {
                    ex.printStackTrace();
                }
            }
        %>
        <%
            ResultSet rs = ps.executeQuery();
            out.println("<table border=1 >");
            out.println("<tr style='background-color:#ffffb3; color:red'>");
            out.println("<th>Emp Name</th>");
            out.println("<th>Emp Id</th>");
            out.println("<th>Designation</th>");
            out.println("<th>Address</th>");
            out.println("</tr>");

            while(rs.next())
            {
                out.println("<tr style='background-color:#b3ffd9;'>");
                out.println("<td>"+rs.getString(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td");
                out.println("</tr>");
            }
            out.println("</table>");
            rs.close();
        %>
    </body>
</html>