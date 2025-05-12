/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.ejb.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Complaint;

/**
 *
 * @author vutlh
 */
@Stateless
public class ComplaintFacade extends AbstractFacade<Complaint> implements ComplaintFacadeLocal {

    @PersistenceContext(unitName = "ComplaintsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComplaintFacade() {
        super(Complaint.class);
    }

    @Override
    public int numResolvedComplaints() {
      Query query=em.createQuery("SELECT COUNT(c) from Complaint c where c.status='resolved'");
      Long resolved=(Long)query.getSingleResult();
      return  resolved.intValue();
      
    
    
    }

    @Override
    public int numPendingComplaints() {
        Query query=em.createQuery("SELECT COUNT(c) from Complaint c where c.status=('pending')");
      Long resolved=(Long)query.getSingleResult();
      return  resolved.intValue();
      
    }
    
}
