package it.itsrizzoli.ProgettoSwiftUI.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

@Entity
public class OrdineOggetto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ordine_id")
    @JsonBackReference
    private Ordine ordine;

    @ManyToOne
    @JoinColumn(name = "oggetto_id")
    private Oggetto oggetto;  // non serializziamo l'oggetto lato figlio




    private int quantita;

    public OrdineOggetto(Ordine ordine, Oggetto oggetto, int quantita) {
        this.ordine = ordine;
        this.oggetto = oggetto;
        this.quantita = quantita;
    }

    public OrdineOggetto() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Ordine getOrdine() {
        return ordine;
    }

    public void setOrdine(Ordine ordine) {
        this.ordine = ordine;
    }

    public Oggetto getOggetto() {
        return oggetto;
    }

    public void setOggetto(Oggetto oggetto) {
        this.oggetto = oggetto;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }
}
