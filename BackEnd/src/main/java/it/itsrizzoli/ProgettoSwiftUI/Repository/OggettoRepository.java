package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Oggetto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface OggettoRepository extends JpaRepository<Oggetto, Integer> {

    Optional<Oggetto> findById(Integer id);

    Optional<Oggetto> findByNomeOggetto(String nomeOggetto);
}
