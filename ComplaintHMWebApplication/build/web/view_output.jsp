<%-- 
    Document   : view_output
    Created on : 11 May 2025, 12:48:29 PM
    Author     : vutlh
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Complaint"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Complaint List</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }

            h1 {
                color: #333;
                text-align: center;
            }

            table {
                border-collapse: collapse;
                width: 80%;
                margin: 20px auto;
                background-color: #fff;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                border-radius: 8px;
                overflow: hidden;
            }

            th, td {
                padding: 12px 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #007BFF;
                color: white;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            select {
                padding: 5px;
                border-radius: 4px;
            }

            form {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Complaints List</h1>
        <form action="DeleteandUpdateServelet.do" method="POST">
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>More</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Complaint> complaintList = (List<Complaint>) request.getAttribute("complaint");
                        for (Complaint complaint : complaintList) {
                            String title = complaint.getTitle();
                            String description = complaint.getDescription();
                    %>
                    <tr>
                        <td><%= title %></td>
                        <td><%= description %></td>
                        <td>
                            <form action="DeleteandUpdateServlet.do">
                                
                                <input type="hidden" name="id" value=<%=complaint.getId()%> /><input type="submit" value="delete" /> 
         
                            </form>
 
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <p><a href="ComplaintDashboard.jsp">Dashboard</a></p>
                    
        </form>        
    </body>
</html>