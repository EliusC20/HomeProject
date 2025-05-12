<%-- 
    Document   : Comment_Section
    Created on : 12 May 2025, 11:34:05 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h3>Submit a Complaint Response</h3>
      
        <input type="text" name="complaintId" placeholder="Complaint ID" required />
        <textarea name="responseText" placeholder="Enter your response..." required></textarea>
        <button type="submit">Submit Response</button>
      
    </body>
</html>
