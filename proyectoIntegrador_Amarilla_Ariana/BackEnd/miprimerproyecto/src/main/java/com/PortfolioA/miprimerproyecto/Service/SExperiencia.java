
package com.PortfolioA.miprimerproyecto.Service;

import com.PortfolioA.miprimerproyecto.Entity.Experiencia;
import com.PortfolioA.miprimerproyecto.Repository.RExperiencia;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SExperiencia {
    @Autowired
    RExperiencia rExperiencia;
    
    public List<Experiencia> list(){
        return rExperiencia.findAll();
    }
    
    public Optional<Experiencia> getOne(int id){
        return rExperiencia.findById(id);
    }
    
    public Optional<Experiencia> getByNombreE(String nombreE){
        return rExperiencia.findByNombreE(nombreE);
    }
    
    public void save(Experiencia expe){
        rExperiencia.save(expe);
    }
    
    public void delete(int id){
        rExperiencia.deleteById(id);
    }
    
    public boolean existById(int id){
        return rExperiencia.existsById(id);
    }
    
    public boolean existsByNombreE(String nombreE){
        return rExperiencia.existByNombreE(nombreE);
    }
}
