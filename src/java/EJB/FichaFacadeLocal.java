/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package EJB;

import entidad.Ficha;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author crist
 */
@Local
public interface FichaFacadeLocal {

    void create(Ficha ficha);

    void edit(Ficha ficha);

    void remove(Ficha ficha);

    Ficha find(Object id);

    List<Ficha> findAll();

    List<Ficha> findRange(int[] range);

    int count();
    
}
