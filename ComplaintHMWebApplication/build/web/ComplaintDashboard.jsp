<%-- 
    Document   : ComplaintDashboard
    Created on : 11 May 2025, 12:46:17 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Complainant Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('Picture/aa.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .dashboard-container {
            position: relative;
            width: 80%;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .dashboard-container h1 {
            margin-bottom: 30px;
            color: #333;
        }

        .button-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .button-grid a {
            display: block;
            padding: 15px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .button-grid a:hover {
            background-color: #0056b3;
        }

        .logout-link {
            position: absolute;
            top: 20px;
            right: 20px;
            text-decoration: none;
            color: #007BFF;
            font-weight: bold;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .logout-link:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <a href="index.html" class="logout-link">Log out</a>
        <h1>Complainant Dashboard</h1>
        <div class="button-grid">
            <a href="AddComplaint.jsp">Add a Complaint</a>
            <a href="ViewComplaintServlet.do">View Complaints</a>
        </div>
    </div>
</body>
</html>