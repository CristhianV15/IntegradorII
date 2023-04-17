/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import EJB.AutorFacadeLocal;
import entidad.Autor;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author crist
 */
@ManagedBean
@SessionScoped
public class ManagedAutor {
    @EJB
    AutorFacadeLocal autorFacadeLocal;
    private List<Autor> listarAutor;
    private Autor autor;

    public List<Autor> getListarAutor() {
        //se asigna a la lista el metodo por defecto del facadelocal: findAll 
        listarAutor= autorFacadeLocal.findAll();
        return listarAutor;
    }

    public void setListarAutor(List<Autor> listarAutor) {
        this.listarAutor = listarAutor;
    }

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }
    
    @PostConstruct
    public void init(){
        autor = new Autor();
    }

    public void guardar(){
        this.autorFacadeLocal.create(autor);
    }
    public void eliminar(Autor a)
    {
        this.autorFacadeLocal.remove(a);
    }    
    public void encontrarAutor(Autor a){
        this.autor=a;
    }
    public void modificarAutor(){
        this.autorFacadeLocal.edit(autor);
    }
}
