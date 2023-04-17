/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package EJB;

import entidad.Libro;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author crist
 */
@Local
public interface LibroFacadeLocal {

    void create(Libro libro);

    void edit(Libro libro);

    void remove(Libro libro);

    Libro find(Object id);

    List<Libro> findAll();

    List<Libro> findRange(int[] range);

    int count();
    
}
