/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Complainant;

/**
 *
 * @author vutlh
 */
@Local
public interface ComplainantFacadeLocal {

    void create(Complainant complainant);

    void edit(Complainant complainant);

    void remove(Complainant complainant);

    Complainant find(Object id);

    List<Complainant> findAll();

    List<Complainant> findRange(int[] range);

    int count();
    
}
