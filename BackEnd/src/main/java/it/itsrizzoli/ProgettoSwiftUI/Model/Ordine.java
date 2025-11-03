package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Ordine {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Date dataOrdine;

    @OneToMany(mappedBy = "ordine", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private Set<OrdineOggetto> ordineOggetti = new HashSet<>();


    public Ordine() {
    }

    public Ordine(Date dataOrdine) {
        this.dataOrdine = dataOrdine;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDataOrdine() {
        return dataOrdine;
    }

    public void setDataOrdine(Date dataOrdine) {
        this.dataOrdine = dataOrdine;
    }

    public Set<OrdineOggetto> getOrdineOggetti() {
        return ordineOggetti;
    }

    public void setOrdineOggetti(Set<OrdineOggetto> ordineOggetti) {
        this.ordineOggetti = ordineOggetti;
    }
}
