package it.itsrizzoli.ProgettoSwiftUI.DTO;

import java.util.UUID;

public class UtenteDTO {

    private UUID id;
    private String nome;
    private String cognome;
    private String email;
    private String password;
    private UUID idRuolo;

    public UtenteDTO(UUID id, String nome, String cognome, String email, String password, UUID idRuolo) {
        this.id = id;
        this.nome = nome;
        this.cognome = cognome;
        this.email = email;
        this.password = password;
        this.idRuolo = idRuolo;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UUID getIdRuolo() {
        return idRuolo;
    }

    public void setIdRuolo(UUID idRuolo) {
        this.idRuolo = idRuolo;
    }
}
