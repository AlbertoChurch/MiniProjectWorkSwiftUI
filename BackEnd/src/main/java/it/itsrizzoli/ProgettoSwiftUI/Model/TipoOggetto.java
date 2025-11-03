package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;

@Entity
public class TipoOggetto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    String tipoOggetto;

    @ManyToMany(mappedBy = "tipoOggetti")
    @JsonIgnore // Evita il loop infinito
    private Set<Oggetto> oggetti = new HashSet<>();


    public String getTipoOggetto() {
        return tipoOggetto;
    }

    public void setTipoOggetto(String tipoOggetto) {
        this.tipoOggetto = tipoOggetto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Set<Oggetto> getOggetti() {
        return oggetti;
    }

    public void setOggetti(Set<Oggetto> oggetti) {
        this.oggetti = oggetti;
    }
}
