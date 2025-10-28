package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Ordine;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.Optional;

public interface OrdineRepository extends JpaRepository<Ordine, Integer> {

    Optional<Ordine> findById(Integer id);

    boolean existsByDataOrdine(Date dataOrdine);

}
