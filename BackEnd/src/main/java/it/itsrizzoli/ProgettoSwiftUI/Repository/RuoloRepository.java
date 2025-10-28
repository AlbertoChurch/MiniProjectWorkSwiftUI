package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Ruolo;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RuoloRepository extends JpaRepository<Ruolo, Integer> {

   Optional<Ruolo> findById(Integer id);

    Optional<Ruolo> findByNome(String nome);

    Ruolo getRuoloById(int id);
}
