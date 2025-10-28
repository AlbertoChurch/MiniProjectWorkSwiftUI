package it.itsrizzoli.ProgettoSwiftUI.DTO;

public class RuoloDTO {

    private Integer id;
    private String nome;

    public RuoloDTO(Integer id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
