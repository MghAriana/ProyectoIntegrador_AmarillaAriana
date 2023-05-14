
package com.PortfolioA.miprimerproyecto.Security.Repository;

import com.PortfolioA.miprimerproyecto.Security.Entity.Rol;
import com.PortfolioA.miprimerproyecto.Security.Enums.RolNombre;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface iRolRepository extends JpaRepository<Rol, Integer> {
    Optional<Rol> findByRolNombre(RolNombre rolNombre);
}
