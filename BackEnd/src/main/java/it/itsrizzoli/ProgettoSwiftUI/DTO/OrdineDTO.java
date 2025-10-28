package it.itsrizzoli.ProgettoSwiftUI.DTO;

import java.sql.Date;

public class OrdineDTO {
    private Integer id;
    private Integer quantita;
    private Date dataOrdine;

    public OrdineDTO(Integer id, Integer quantita, Date dataOrdine) {
        this.id = id;
        this.quantita = quantita;
        this.dataOrdine = dataOrdine;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getQuantita() {
        return quantita;
    }

    public void setQuantita(Integer quantita) {
        this.quantita = quantita;
    }

    public Date getDataOrdine() {
        return dataOrdine;
    }

    public void setDataOrdine(Date dataOrdine) {
        this.dataOrdine = dataOrdine;
    }
}
