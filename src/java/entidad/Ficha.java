/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidad;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author crist
 */
@Entity
@Table(name = "ficha")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Ficha.findAll", query = "SELECT f FROM Ficha f"),
    @NamedQuery(name = "Ficha.findByCodfic", query = "SELECT f FROM Ficha f WHERE f.codfic = :codfic")})
public class Ficha implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "codfic")
    private String codfic;
    @JoinColumn(name = "codaut", referencedColumnName = "codaut")
    @ManyToOne(optional = false)
    private Autor codaut;
    @JoinColumn(name = "codlib", referencedColumnName = "codlib")
    @ManyToOne(optional = false)
    private Libro codlib;

    public Ficha() {
    }

    public Ficha(String codfic) {
        this.codfic = codfic;
    }

    public String getCodfic() {
        return codfic;
    }

    public void setCodfic(String codfic) {
        this.codfic = codfic;
    }

    public Autor getCodaut() {
        return codaut;
    }

    public void setCodaut(Autor codaut) {
        this.codaut = codaut;
    }

    public Libro getCodlib() {
        return codlib;
    }

    public void setCodlib(Libro codlib) {
        this.codlib = codlib;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codfic != null ? codfic.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Ficha)) {
            return false;
        }
        Ficha other = (Ficha) object;
        if ((this.codfic == null && other.codfic != null) || (this.codfic != null && !this.codfic.equals(other.codfic))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidad.Ficha[ codfic=" + codfic + " ]";
    }
    
}
