/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ComplaintFacadeLocal;

/**
 *
 * @author vutlh
 */
public class LoginServlet extends HttpServlet {

    
    @EJB
    private ComplaintFacadeLocal cfl;
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String username=request.getParameter("username");
        String role=request.getParameter("role");
        session.setAttribute("username", username);
        if(role.equalsIgnoreCase("company")){
            
        Integer allComplaints=cfl.count();
        Integer resolvedComplaints=cfl.numResolvedComplaints();
        Integer pendingComplaints=cfl.numPendingComplaints();
        
         session.setAttribute("all", allComplaints);
         session.setAttribute("resolved", resolvedComplaints);
         session.setAttribute("pending", pendingComplaints);
         
         
        
        
        
        
            
        RequestDispatcher rd=request.getRequestDispatcher("CompanyDashboard.jsp");
        rd.forward(request, response);   
        }
        else if(role.equalsIgnoreCase("complainant")){
            
            
        RequestDispatcher rd=request.getRequestDispatcher("ComplaintDashboard.jsp");
        rd.forward(request, response);
                
        }
        
        
        
        
        
        
        
    }



}

