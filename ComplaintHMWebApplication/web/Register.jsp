<%-- 
    Document   : Register
    Created on : 11 May 2025, 12:12:21 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register - Complaint App</title>
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
            }

            h1 {
                text-align: center;
                color: #fff;
                margin-top: 40px;
            }

            p {
                text-align: center;
                color: #f2f2f2;
                font-size: 18px;
            }

            form {
                width: 420px;
                margin: 30px auto;
                padding: 25px;
                background-color:rgba(255,255,255,0.8);;
                border-radius: 12px;
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            }

            table {
                width: 100%;
            }

            td {
                padding: 12px 8px;
                font-size: 15px;
                color: #333;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 6px;
                box-sizing: border-box;
                font-size: 14px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 12px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 6px;
                cursor: pointer;
                font-size: 16px;
                font-weight: bold;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <h1>Register</h1>
        
        <p>Please enter your information below:</p>
            
        <form action="Register_complainant.do" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Surname:</td>
                        <td><input type="text" name="surname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Full Names:</td>
                        <td><input type="text" name="names" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password:</td>
                        <td><input type="password" name="comfirmed_password" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>