<%-- 
    Document   : Register_outcome
    Created on : 11 May 2025, 12:33:16 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Outcome</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                 margin: 0; /* remove default margin so image fills edge-to-edge */
      background-image: url('Picture/bb.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }

            .container {
                background-color:#cccccc;
                padding: 30px 40px;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
                text-align: center;
            }

            h1 {
                color: #28a745;
                margin-bottom: 20px;
            }

            p {
                font-size: 16px;
                color: #333;
                margin: 12px 0;
            }

            a {
                color: #007BFF;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Registration Successful</h1>
            <p>You have been registered successfully.</p>
            <p>You can now : <a href="Login.jsp">log in</a></p>
                          <P>OR</P>
            <p><a href="index.jsp">Go to main page</a></p>
        </div>
    </body>
</html>
