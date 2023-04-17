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
@Table(name = "autor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Autor.findAll", query = "SELECT a FROM Autor a"),
    @NamedQuery(name = "Autor.findByCodaut", query = "SELECT a FROM Autor a WHERE a.codaut = :codaut"),
    @NamedQuery(name = "Autor.findByNomaut", query = "SELECT a FROM Autor a WHERE a.nomaut = :nomaut"),
    @NamedQuery(name = "Autor.findByApeaut", query = "SELECT a FROM Autor a WHERE a.apeaut = :apeaut"),
    @NamedQuery(name = "Autor.findByNacaut", query = "SELECT a FROM Autor a WHERE a.nacaut = :nacaut")})
public class Autor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "codaut")
    private String codaut;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "nomaut")
    private String nomaut;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "apeaut")
    private String apeaut;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "nacaut")
    private String nacaut;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "codaut")
    private Collection<Ficha> fichaCollection;

    public Autor() {
    }

    public Autor(String codaut) {
        this.codaut = codaut;
    }

    public Autor(String codaut, String nomaut, String apeaut, String nacaut) {
        this.codaut = codaut;
        this.nomaut = nomaut;
        this.apeaut = apeaut;
        this.nacaut = nacaut;
    }

    public String getCodaut() {
        return codaut;
    }

    public void setCodaut(String codaut) {
        this.codaut = codaut;
    }

    public String getNomaut() {
        return nomaut;
    }

    public void setNomaut(String nomaut) {
        this.nomaut = nomaut;
    }

    public String getApeaut() {
        return apeaut;
    }

    public void setApeaut(String apeaut) {
        this.apeaut = apeaut;
    }

    public String getNacaut() {
        return nacaut;
    }

    public void setNacaut(String nacaut) {
        this.nacaut = nacaut;
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
        hash += (codaut != null ? codaut.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Autor)) {
            return false;
        }
        Autor other = (Autor) object;
        if ((this.codaut == null && other.codaut != null) || (this.codaut != null && !this.codaut.equals(other.codaut))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidad.Autor[ codaut=" + codaut + " ]";
    }
    
}
