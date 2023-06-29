
package com.PortfolioA.miprimerproyecto.Repository;

import com.PortfolioA.miprimerproyecto.Entity.Persona;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPersonaRepository extends JpaRepository<Persona,Integer> {
     public Optional<Persona> findByNombreE(String nombre);
    public boolean existsByNombreE(String nombre);
}
