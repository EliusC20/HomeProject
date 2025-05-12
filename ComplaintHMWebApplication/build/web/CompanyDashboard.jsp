<%-- 
    Document   : CompanyDashboard
    Created on : 11 May 2025, 12:46:50 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <title>Complaints Dashboard</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      font-family: 'Inter', sans-serif;
      background: #f1f4f9;
      margin: 0;
      padding: 0;
    }

    .header {
      background: #3949ab;
      color: white;
      padding: 20px 30px;
      font-size: 22px;
      font-weight: 600;
    }

    .container {
      padding: 30px;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(340px, 1fr));
      gap: 20px;
    }

    .card {
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    }

    .card h3 {
      margin: 0 0 10px;
      font-size: 18px;
      color: #2c3e50;
    }

    .card p {
      color: #777;
      font-size: 14px;
    }

    canvas {
      max-width: 100%;
    }

    .form-container {
      grid-column: span 2;
    }

    .form-container form {
      display: flex;
      flex-direction: column;
    }

    .form-container input,
    .form-container textarea,
    .form-container button {
      margin-bottom: 15px;
      padding: 10px 12px;
      border-radius: 6px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    .form-container button {
      background-color: #43a047;
      color: white;
      border: none;
      cursor: pointer;
    }

    .form-container button:hover {
      background-color: #388e3c;
    }

    .nav {
      margin: 20px 30px 0;
    }

    .nav a {
      text-decoration: none;
      background-color: #3949ab;
      color: white;
      padding: 10px 15px;
      border-radius: 5px;
      margin-right: 15px;
      display: inline-block;
    }

    .nav a:hover {
      background-color: #303f9f;
    }
  </style>
</head>
<body>
    
    <%
        
        Integer all=(Integer)session.getAttribute("all");
        Integer resolved=(Integer)session.getAttribute("resolved");
        Integer pending=(Integer)session.getAttribute("pending");
        


        %>
  

  <div class="header">🛠️ Admin Dashboard - Complaints Overview</div>

  <div class="nav">
    <a href="ViewAllComplaintsServlet.do">View Complaints</a>
    <a href="ResolveServlet.do">Respond to Complaints</a>
    <a href="ResponseProgress.do">Response Progress</a>
  </div>

  <div class="container">
    <!-- Stats Cards -->
    <div class="card">
      <h3>Total Complaints</h3>
      <p>📨 <%=all%> registered this month</p>
    </div>
    <div class="card">
      <h3>Resolved</h3>
      <p>✅ <%=resolved%> complaints resolved</p>
    </div>
    <div class="card">
      <h3>In Progress</h3>
      <p>🔄 <%=pending%> complaints being handled</p>
    </div>
    <div class="card">
      <h3>Average Response Time</h3>
      <p>⏱️ 1.8 days</p>
    </div>

    <!-- Chart Section -->
    <div class="card">
      <h3>Complaints Breakdown</h3>
      <canvas id="barChart"></canvas>
    </div>

    <div class="card">
      <h3>Status Distribution</h3>
      <canvas id="pieChart"></canvas>
    </div>

    <!-- Response Form -->
    <div class="card form-container">
      <h3>Submit a Complaint Response</h3>
      <form action="SubmitResponse.do" method="POST">
        <input type="text" name="complaintId" placeholder="Complaint ID" required />
        <textarea name="responseText" placeholder="Enter your response..." required></textarea>
        <button type="submit">Submit Response</button>
      </form>
      <P><a href="index.html">Log out</a></P>
    </div>
  </div>

  <script>
      total = <%=all%> , resolved = <%=resolved%> , inProgress =<%=pending%> ;

    new Chart(document.getElementById('barChart'), {
      type: 'bar',
      data: {
        labels: ['Total', 'Resolved', 'In Progress'],
        datasets: [{
          label: 'Complaints',
          data: [total, resolved, inProgress],
          backgroundColor: ['#f44336', '#4caf50', '#ff9800']
        }]
      },
      options: {
        plugins: {
          legend: { display: false },
          title: { display: true, text: 'Complaint Statistics' }
        }
      }
    });

    new Chart(document.getElementById('pieChart'), {
      type: 'doughnut',
      data: {
        labels: ['Resolved', 'In Progress'],
        datasets: [{
          data: [resolved, inProgress],
          backgroundColor: ['#4caf50', '#ff9800']
        }]
      },
      options: {
        plugins: {
          title: { display: true, text: 'Status Distribution' },
          legend: { position: 'bottom' }
        }
      }
    });
  </script>

</body>
</html>