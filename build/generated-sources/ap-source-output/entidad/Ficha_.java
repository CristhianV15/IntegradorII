package entidad;

import entidad.Autor;
import entidad.Libro;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-04-17T08:12:14")
@StaticMetamodel(Ficha.class)
public class Ficha_ { 

    public static volatile SingularAttribute<Ficha, String> codfic;
    public static volatile SingularAttribute<Ficha, Autor> codaut;
    public static volatile SingularAttribute<Ficha, Libro> codlib;

}