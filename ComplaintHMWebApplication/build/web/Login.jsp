<%-- 
    Document   : Login
    Created on : 11 May 2025, 12:36:08 AM
    Author     : vutlh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #eef1f5;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .login-container {
                background-color: #fff;
                padding: 30px 40px;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
                width: 400px;
            }

            h1 {
                text-align: center;
                color: #2c3e50;
                margin-bottom: 10px;
            }

            p {
                text-align: center;
                color: #666;
                margin-bottom: 25px;
            }

            table {
                width: 100%;
            }

            td {
                padding: 10px 0;
                font-size: 15px;
                color: #333;
            }

            input[type="text"],
            input[type="password"],
            select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 14px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                width: 100%;
                padding: 12px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1>Log In</h1>
            <p>Please enter your details below to log in.</p>

            <form action="LoginServlet.do" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Log in as:</td>
                            <td>
                                <select name="role">
                                    <option value="company">Company personnel</option>
                                    <option value="complainant">Complainant</option>
                                </select>
                            </td>
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
                            <td></td>
                            <td><input type="submit" value="Log In" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html