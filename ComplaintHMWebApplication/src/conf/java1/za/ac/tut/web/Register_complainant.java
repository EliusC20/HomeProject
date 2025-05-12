/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vutlh
 */
public class Register_complainant extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String surname=request.getParameter("surname");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String username=request.getParameter("username");
        String password=request.getParameter("comfirmed_password");
        
        //The user must be persisted into the database when the ejb is created.        
       RequestDispatcher rd=request.getRequestDispatcher("Register_outcome.jsp");
       rd.forward(request, response);
    }

}
