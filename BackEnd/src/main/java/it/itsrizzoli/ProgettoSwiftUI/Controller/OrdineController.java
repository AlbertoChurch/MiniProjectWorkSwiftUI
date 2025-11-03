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
public class OrdineController {
    @Autowired
    private OrdineRepository ordineRepository;
    @Autowired
    private OggettoRepository oggettoRepository;

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

    @GetMapping("/ordini")
    public List<Ordine> GetOrdini() {
        return ordineRepository.findAll();
    }
}
