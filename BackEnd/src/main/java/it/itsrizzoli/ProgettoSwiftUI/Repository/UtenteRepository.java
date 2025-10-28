package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Ruolo;
import it.itsrizzoli.ProgettoSwiftUI.Model.Utente;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
public interface UtenteRepository extends JpaRepository<Utente, Long> {

    Optional<Utente> findByEmail(String email);

    boolean existsByEmail(String email);

    List<Utente> findAllById(Long id);

    List<Utente> findByNome(String nome);

    List<Utente> findByCognome(String cognome);

    List<Utente> findByRuolo(Ruolo ruolo);

    List<Utente> findByPassword(String password);
}
