package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import org.antlr.v4.runtime.misc.NotNull;

import java.util.HashSet;
import java.util.Set;

@Entity
public class Ruolo {
    @Id
    @GeneratedValue (strategy= GenerationType.AUTO)
    private int id;

    @NotNull
    String nome;

    @OneToMany (mappedBy = "ruolo", cascade = CascadeType.ALL)
    @JsonBackReference
    private Set<Utente> utenti = new HashSet<>();

    public Set<Utente> getUtenti() {
        return utenti;
    }

    public void setUtenti(Set<Utente> utenti) {
        this.utenti = utenti;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}