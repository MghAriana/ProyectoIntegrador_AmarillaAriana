
package com.PortfolioA.miprimerproyecto.Service;

import com.PortfolioA.miprimerproyecto.Entity.Persona;
import com.PortfolioA.miprimerproyecto.Repository.IPersonaRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ImplPersonaService{ 
    
    @Autowired IPersonaRepository ipersonaRepository ;
  
    public List<Persona> list(){
        return ipersonaRepository.findAll();
    }
    
    public Optional<Persona> getOne(int id){
        return ipersonaRepository.findById(id);
    }
    
    public Optional<Persona> getByNombre(String nombre){
        return ipersonaRepository.findByNombreE(nombre);
    }
    
    public void save(Persona persona){
        ipersonaRepository.save(persona);
    }
    
    public void delete(int id){
        ipersonaRepository.deleteById(id);
    }
    
    public boolean existById(int id){
        return ipersonaRepository.existsById(id);
    }
    
    public boolean existByNombreE(String nombre){
        return ipersonaRepository.existsByNombreE(nombre);
    }
    
}
