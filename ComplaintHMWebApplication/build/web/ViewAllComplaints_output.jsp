<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Complaint"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Complaint List</title>
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

        select, textarea, input[type="submit"] {
            padding: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        textarea {
            resize: vertical;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .form-actions {
            margin-top: 10px;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007BFF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Complaints List</h1>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Status</th>
                <th>Comment</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<Complaint> complaintList = (List<Complaint>)request.getAttribute("complaint");
                for (Complaint complaint : complaintList) {
                    String title = complaint.getTitle();
                    String description = complaint.getDescription();
                    String status = complaint.getStatus();
            %>
            <tr>
                <td><%= title %></td>
                <td><%= description %></td>
                <td>
                    <form action="ResolveServlet.do" method="GET">
                        <input type="hidden" name="id" value="<%=complaint.getId()%>" />
                        <select name="status">
                            <option value=<%=complaint.getStatus()%>><%=complaint.getStatus()%></option>
                           
                            <option value="resolved" >Resolve</option>
                        </select>
                </td>
                <td>
                        <textarea name="comment" rows="3" cols="30" placeholder="Enter comment"></textarea>
                </td>
                <td class="form-actions">
                        <input type="submit" value="Save" />
                         </td>
                    
               
            </tr>
            <% } %>
            </form>
        </tbody>
    </table>
            <form action="ResponseProgress.do" method="POST">
                
                <input type="submit" value="Go to Dashboard" /> 
            </form>
    
</body>
</html>