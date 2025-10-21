package it.itsrizzoli.ProgettoSwiftUI.Controller;

import it.itsrizzoli.ProgettoSwiftUI.Model.Utente;
import it.itsrizzoli.ProgettoSwiftUI.Repository.UtenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/utenti")
public class UtenteController {

    @Autowired
    private UtenteRepository utenteRepository;

}

