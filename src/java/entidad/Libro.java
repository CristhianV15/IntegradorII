/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidad;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author crist
 */
@Entity
@Table(name = "libro")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Libro.findAll", query = "SELECT l FROM Libro l"),
    @NamedQuery(name = "Libro.findByCodlib", query = "SELECT l FROM Libro l WHERE l.codlib = :codlib"),
    @NamedQuery(name = "Libro.findByTitlub", query = "SELECT l FROM Libro l WHERE l.titlub = :titlub")})
public class Libro implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "codlib")
    private String codlib;
    @Basic(optional = false)
    @NotNull
    @Column(name = "titlub")
    private int titlub;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "codlib")
    private Collection<Ficha> fichaCollection;

    public Libro() {
    }

    public Libro(String codlib) {
        this.codlib = codlib;
    }

    public Libro(String codlib, int titlub) {
        this.codlib = codlib;
        this.titlub = titlub;
    }

    public String getCodlib() {
        return codlib;
    }

    public void setCodlib(String codlib) {
        this.codlib = codlib;
    }

    public int getTitlub() {
        return titlub;
    }

    public void setTitlub(int titlub) {
        this.titlub = titlub;
    }

    @XmlTransient
    public Collection<Ficha> getFichaCollection() {
        return fichaCollection;
    }

    public void setFichaCollection(Collection<Ficha> fichaCollection) {
        this.fichaCollection = fichaCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codlib != null ? codlib.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Libro)) {
            return false;
        }
        Libro other = (Libro) object;
        if ((this.codlib == null && other.codlib != null) || (this.codlib != null && !this.codlib.equals(other.codlib))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidad.Libro[ codlib=" + codlib + " ]";
    }
    
}
