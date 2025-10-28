package it.itsrizzoli.ProgettoSwiftUI.Repository;

import it.itsrizzoli.ProgettoSwiftUI.Model.Oggetto;
import it.itsrizzoli.ProgettoSwiftUI.Model.TipoOggetto;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface TipoOggettoRepository extends JpaRepository<TipoOggetto, Integer> {

    Optional<TipoOggetto> findTipoOggettoById(int id);

    Set<TipoOggetto> findTipoOggettoByTipoOggetto(String tipoOggetto);
}
