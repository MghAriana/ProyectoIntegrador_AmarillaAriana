
package com.PortfolioA.miprimerproyecto.Repository;

import com.PortfolioA.miprimerproyecto.Entity.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface IPersonaRepository extends JpaRepository<Persona,Long> {
    
}
