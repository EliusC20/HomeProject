<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complaint Page</title>
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

        p {
            text-align: center;
            color: #555;
        }

        form {
            width: 50%;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .dashboard-link {
            text-align: center;
            margin-top: 20px;
        }

        .dashboard-link a {
            color: #007BFF;
            text-decoration: none;
        }

        .dashboard-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Add Complaint</h1>
    <p>Please enter the complaint that you have below:</p>

    <form action="AddComplaintsServlet.do" method="POST">
        <table>
            <tbody>
                <tr>
                    <td><label for="title">Title:</label></td>
                    <td><input type="text" id="title" name="title" required /></td>
                </tr>
                <tr>
                    <td><label for="desc">Description:</label></td>
                    <td><textarea id="desc" name="desc" rows="6" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right;">
                        <input type="submit" value="Add Complaint" />
                    </td>
                </tr>
            </tbody>
        </table>
    </form>

    <div class="dashboard-link">
        <p><a href="ComplaintDashboard.jsp">Go to Dashboard</a></p>
    </div>
</body>
</html>
