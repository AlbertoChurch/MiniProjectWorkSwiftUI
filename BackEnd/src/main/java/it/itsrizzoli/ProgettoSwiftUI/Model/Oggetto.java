package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Oggetto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nomeOggetto;

    @OneToMany(mappedBy = "oggetto", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<OrdineOggetto> ordineOggetti = new HashSet<>();

    @ManyToMany
    @JoinTable(
            name = "oggetto_tipo_oggetto",
            joinColumns = @JoinColumn(name = "oggetto_id"),
            inverseJoinColumns = @JoinColumn(name = "tipo_oggetto_id")
    )
    private Set<TipoOggetto> tipoOggetti = new HashSet<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeOggetto() {
        return nomeOggetto;
    }

    public void setNomeOggetto(String nomeOggetto) {
        this.nomeOggetto = nomeOggetto;
    }

    public Set<OrdineOggetto> getOrdineOggetti() {
        return ordineOggetti;
    }

    public void setOrdineOggetti(Set<OrdineOggetto> ordineOggetti) {
        this.ordineOggetti = ordineOggetti;
    }

    public Set<TipoOggetto> getTipoOggetti() {
        return tipoOggetti;
    }

    public void setTipoOggetti(Set<TipoOggetto> tipoOggetti) {
        this.tipoOggetti = tipoOggetti;
    }
}
