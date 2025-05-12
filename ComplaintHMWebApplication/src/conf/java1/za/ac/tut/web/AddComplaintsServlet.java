/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ComplaintFacadeLocal;
import za.ac.tut.entities.Complaint;

/**
 *
 * @author vutlh
 */
public class AddComplaintsServlet extends HttpServlet {
@EJB
private ComplaintFacadeLocal cfl;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
        String title=request.getParameter("title");
        String description=request.getParameter("desc");
        String status=request.getParameter("status");
        String complaintName=request.getParameter("complaintName");
        String comment=request.getParameter("comment");
        Complaint compliant=new Complaint(title, complaintName,description,status,new Date(),comment);
        cfl.create(compliant);
        RequestDispatcher rd=request.getRequestDispatcher("AddComplaint_outcome.jsp");
        rd.forward(request, response);
        
    }

}
