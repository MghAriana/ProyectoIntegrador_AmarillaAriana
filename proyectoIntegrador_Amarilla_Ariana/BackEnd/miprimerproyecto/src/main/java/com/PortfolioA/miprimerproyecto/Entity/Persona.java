/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.PortfolioA.miprimerproyecto.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author arian
 */

@Getter  @Setter

@Entity
public class Persona {
     @Id
     @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private Long id ;
    
     @NotNull
     @Size( min = 1, max = 40 , message = "no cumple con los requisitos")
    
    private String nombre ;
     
     @NotNull
     @Size( min = 1, max = 40 , message = "no cumple con los requisitos")
     
    private String apellido ;
     

     @Size( min = 1, max = 40 , message = "no cumple con los requisitos")
     
    private String img ;
     
     
     
}
