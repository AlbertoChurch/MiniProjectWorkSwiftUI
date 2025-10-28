package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

import java.time.temporal.UnsupportedTemporalTypeException;

@Entity
public class Utente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String nome;

    @NotNull
    private String cognome;

    @NotNull
    private String email;

    @NotNull
    private String password;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "id_ruolo")
    @JsonManagedReference
    private Ruolo ruolo;

    public Long getId() {
        return id;
    }

    public Utente() {}

    public Utente(String nome, String cognome, String email, String password, Ruolo ruolo) {
        this.nome = nome;
        this.cognome = cognome;
        this.email = email;
        this.password = password;
        this.ruolo = ruolo;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setRuolo(Ruolo ruolo) {
        this.ruolo = ruolo;
    }

    public Ruolo getRuolo() {
        return ruolo;
    }
}
