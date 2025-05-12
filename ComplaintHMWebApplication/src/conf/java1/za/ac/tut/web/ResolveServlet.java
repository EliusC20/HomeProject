/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ComplaintFacadeLocal;
import za.ac.tut.entities.Complaint;


public class ResolveServlet extends HttpServlet {

     @EJB
    private ComplaintFacadeLocal cfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
       String status=request.getParameter("status");
       String comment=request.getParameter("comment");
       
       
       Long id=Long.parseLong(request.getParameter("id"));
      
           
         Complaint c = cfl.find(id);

            cfl.remove(c);
            c.setStatus(status);
            c.setComment(comment);
            cfl.create(c);
            
            
            int allComplaints=cfl.count();
            Integer resolvedComplaints=  cfl.numPendingComplaints();
            Integer pendingComplaints=cfl.numResolvedComplaints();
            
            
            
         session.setAttribute("all", allComplaints);
         session.setAttribute("resolved", resolvedComplaints);
         session.setAttribute("pending", pendingComplaints);
         
         
         
          List<Complaint> compalaintList=cfl.findAll();
          request.setAttribute("complaint", compalaintList);
      
          
           RequestDispatcher rd=request.getRequestDispatcher("ViewAllComplaints_output.jsp");
           rd.forward(request, response);
           
           
           
        
       
       
       
    }

  
}
