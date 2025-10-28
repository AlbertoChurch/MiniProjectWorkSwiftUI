package it.itsrizzoli.ProgettoSwiftUI.DTO;

public class OggettoDTO {

    private Integer id;
    private String nomeOggetto;

    public OggettoDTO(Integer id, String nome) {
        this.id = id;
        this.nomeOggetto = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nomeOggetto;
    }

    public void setNome(String nome) {
        this.nomeOggetto = nome;
    }
}
