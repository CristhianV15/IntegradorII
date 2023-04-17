package entidad;

import entidad.Ficha;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-04-17T08:12:14")
@StaticMetamodel(Libro.class)
public class Libro_ { 

    public static volatile SingularAttribute<Libro, String> codlib;
    public static volatile SingularAttribute<Libro, Integer> titlub;
    public static volatile CollectionAttribute<Libro, Ficha> fichaCollection;

}