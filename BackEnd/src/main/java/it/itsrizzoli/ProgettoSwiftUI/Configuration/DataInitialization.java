package it.itsrizzoli.ProgettoSwiftUI.Configuration;

import it.itsrizzoli.ProgettoSwiftUI.Model.*;
import it.itsrizzoli.ProgettoSwiftUI.Repository.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

@Component
public class DataInitialization implements CommandLineRunner {

    private final RuoloRepository ruoloRepository;
    private final UtenteRepository UtenteRepository;
    private final TipoOggettoRepository tipoOggettoRepository;
    private final OggettoRepository  OggettoRepository;
    private final OrdineRepository ordineRepository;

    public DataInitialization(RuoloRepository ruoloRepository, UtenteRepository utenteRepository, TipoOggettoRepository tipoOggettoRepository, OggettoRepository oggettoRepository, OrdineRepository ordineRepository) {
        this.ruoloRepository = ruoloRepository;
        this.UtenteRepository = utenteRepository;
        this.tipoOggettoRepository = tipoOggettoRepository;
        this.OggettoRepository = oggettoRepository;
        this.ordineRepository = ordineRepository;
    }

    @Override
    public void run(String... args) {

        //ruolo
        if (ruoloRepository.count() < 1) {
            Ruolo segreteria = new Ruolo();
            segreteria.setNome("Segreteria");

            ruoloRepository.save(segreteria);

            System.out.println("Ruolo inizializzato :)");
        }

        //utente
        if (UtenteRepository.count() < 1) {
            Utente prova = new Utente();
            prova.setNome("NomeProva");
            prova.setCognome("CognomeProva");
            prova.setEmail("abc@prova.com");
            prova.setPassword("password");

            //ruolo che so per certo che c'è
            Optional<Ruolo> ruolo = ruoloRepository.findById(1);

            if (ruolo.isPresent()) {
                prova.setRuolo(ruolo.get());
                UtenteRepository.save(prova);
                System.out.println("utente prova inizializzato");
            } else {
                System.out.println("Utente non creato: Ruolo non trovato");
            }
        }
        //Tipi
        if (tipoOggettoRepository.count() < 1) {
            TipoOggetto tipoOggetto1 = new TipoOggetto();
            tipoOggetto1.setTipoOggetto("Tipo1");
            tipoOggettoRepository.save(tipoOggetto1);
            System.out.println("tipo1 inizializzato");

            TipoOggetto tipoOggetto2 = new TipoOggetto();
            tipoOggetto2.setTipoOggetto("Tipo2");
            tipoOggettoRepository.save(tipoOggetto2);
            System.out.println("tipo2 inizializzato");

        }

        //Oggetto
        if (OggettoRepository.count() < 1) {
            Oggetto obj = new Oggetto();
            obj.setNomeOggetto("Oggetto");
            obj.setTipoOggetti(tipoOggettoRepository.findTipoOggettoByTipoOggetto("Tipo2"));
            OggettoRepository.save(obj);
            System.out.println("Oggetto prova inizializzato");

            Oggetto obj2 = new Oggetto();
            Set<TipoOggetto> objSet = new HashSet<>();
            obj2.setNomeOggetto("Oggettoprova");
            objSet.add(tipoOggettoRepository.getReferenceById(1));
            objSet.add(tipoOggettoRepository.getReferenceById(2));
            obj2.setTipoOggetti(objSet);
            OggettoRepository.save(obj2);
            System.out.println("Oggetto prova2 inizializzato");
        }

        //ordine
        if (ordineRepository.count() < 1) {
            Ordine ord = new Ordine();
            ord.setDataOrdine(Date.valueOf("2023-11-11"));

            Set<OrdineOggetto> ordineOggetti = new HashSet<>();

            OrdineOggetto ogg1 = new OrdineOggetto();
            ogg1.setOrdine(ord);
            ogg1.setOggetto(OggettoRepository.getReferenceById(1));
            ogg1.setQuantita(5);
            ordineOggetti.add(ogg1);

//            OrdineOggetto ogg2 = new OrdineOggetto();
//            ogg2.setOrdine(ord);
//            ogg2.setOggetto(OggettoRepository.getReferenceById(2));
//            ogg2.setQuantita(3);
//            ordineOggetti.add(ogg2);

            ord.setOrdineOggetti(ordineOggetti);

            ordineRepository.save(ord);
            System.out.println("Ordine inizializzato");
        }


    }
}
