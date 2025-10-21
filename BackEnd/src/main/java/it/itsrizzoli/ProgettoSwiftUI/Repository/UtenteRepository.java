package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Ruolo;
import it.itsrizzoli.ProgettoSwiftUI.Model.Utente;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UtenteRepository extends JpaRepository<Utente, UUID> {

    Optional<Utente> findByEmail(String email);

    boolean existsByEmail(String email);

    List<Utente> findByNome(String nome);

    List<Utente> findByCognome(String cognome);

    List<Utente> findByRuolo(Ruolo ruolo);
}
