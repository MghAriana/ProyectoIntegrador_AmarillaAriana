package com.PortfolioA.miprimerproyecto.Interface;

import com.PortfolioA.miprimerproyecto.Entity.Persona;
import java.util.List;


public interface IPersonaService {
    //trae una lista de personas
    public List<Persona> getPersona();
    
    //guardar objeto
    public void savePersona(Persona persona );
    
    //eliminar obejeto
    public void deletePersona(Long id);
    
    //buscar persona por id 
    public Persona findPersona(Long id);
    
}
