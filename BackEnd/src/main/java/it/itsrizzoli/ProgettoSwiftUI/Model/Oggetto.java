package it.itsrizzoli.ProgettoSwiftUI.Model;

import jakarta.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Oggetto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nomeOggetto;

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

    public Set<TipoOggetto> getTipoOggetti() {
        return tipoOggetti;
    }

    public void setTipoOggetti(Set<TipoOggetto> tipoOggetti) {
        this.tipoOggetti = tipoOggetti;
    }
}
