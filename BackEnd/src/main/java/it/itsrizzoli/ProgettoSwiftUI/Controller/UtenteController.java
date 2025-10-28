package it.itsrizzoli.ProgettoSwiftUI.Controller;

import it.itsrizzoli.ProgettoSwiftUI.DTO.OrdineDTO;
import it.itsrizzoli.ProgettoSwiftUI.DTO.UtenteDTO;
import it.itsrizzoli.ProgettoSwiftUI.Model.Oggetto;
import it.itsrizzoli.ProgettoSwiftUI.Model.Ordine;
import it.itsrizzoli.ProgettoSwiftUI.Model.Utente;
import it.itsrizzoli.ProgettoSwiftUI.Repository.OggettoRepository;
import it.itsrizzoli.ProgettoSwiftUI.Repository.OrdineRepository;
import it.itsrizzoli.ProgettoSwiftUI.Repository.RuoloRepository;
import it.itsrizzoli.ProgettoSwiftUI.Repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class UtenteController {

    @Autowired
    private UtenteRepository utenteRepository;
    @Autowired
    private RuoloRepository ruoloRepository;
    @Autowired
    private OrdineRepository ordineRepository;
    @Autowired
    private OggettoRepository oggettoRepository;

    @PostMapping("/register")
    public String creaUtente(@RequestBody UtenteDTO dto) {
        Utente utente = new Utente(dto.getNome(),dto.getCognome(), dto.getEmail(), dto.getPassword(), ruoloRepository.findById((1)).get());

        if (utenteRepository.findByEmail(dto.getEmail()).isPresent()) {
            System.out.println("utente gia presente");
            return "Utente esistente";
        } else {
            utenteRepository.save(utente);
            System.out.println("utente salvato");
            return "Registrazione avvenuta";
        }
    }

    @PostMapping("/ordini")
    public String creaOrdine(@RequestBody OrdineDTO dto) {
        Ordine Ordine = new Ordine(dto.getDataOrdine());


        if (ordineRepository.existsByDataOrdine(dto.getDataOrdine())) {
            System.out.println("Ordine esistente");
            return "Ordine esistente";
        } else  {
            ordineRepository.save(Ordine);
            System.out.println("Ordine salvato");
            return "Ordine registrato";
        }
    }

    @GetMapping("/oggetti")
    public List<Oggetto> GetOggetti() {
        return oggettoRepository.findAll();
    }
}
