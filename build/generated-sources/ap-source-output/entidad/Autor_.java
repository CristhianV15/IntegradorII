package entidad;

import entidad.Ficha;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-04-17T08:12:14")
@StaticMetamodel(Autor.class)
public class Autor_ { 

    public static volatile SingularAttribute<Autor, String> nomaut;
    public static volatile SingularAttribute<Autor, String> codaut;
    public static volatile SingularAttribute<Autor, String> apeaut;
    public static volatile SingularAttribute<Autor, String> nacaut;
    public static volatile CollectionAttribute<Autor, Ficha> fichaCollection;

}