package it.itsrizzoli.ProgettoSwiftUI.DTO;

public class TipoOggettoDTO {
    private Integer id;
    private String tipoOggetto;

    public TipoOggettoDTO(Integer id, String nome) {
        this.id = id;
        this.tipoOggetto = nome;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTipoOggetto() {
        return tipoOggetto;
    }

    public void setTipoOggetto(String tipoOggetto) {
        this.tipoOggetto = tipoOggetto;
    }
}
