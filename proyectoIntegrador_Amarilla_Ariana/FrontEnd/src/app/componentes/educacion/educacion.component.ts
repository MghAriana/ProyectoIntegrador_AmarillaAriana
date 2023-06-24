import { Component } from '@angular/core';
import { Educacion } from 'src/app/model/educacion';
import { EducacionService } from 'src/app/service/educacion.service';
import { TokenService } from 'src/app/service/token.service';

@Component({
  selector: 'app-educacion',
  templateUrl: './educacion.component.html',
  styleUrls: ['./educacion.component.css']
})
export class EducacionComponent {
 educacion:Educacion[] = [];

 constructor(private eduacionS: EducacionService, private tokenService : TokenService){}

 isLogged = false;


 ngOnInit(): void {
  this.cargarEducacion();
  if(this.tokenService.getToken() ){
    this.isLogged = true;
  }else {
    this.isLogged = false;
  }
 
 }

 cargarEducacion():void{
  this.eduacionS.lista().subscribe(
    data=>{
      this.educacion = data;
    }
  )
 }
 
 borrar(id?:number){
  if(id != undefined){
    this.eduacionS.delete(id).subscribe(
      data=>{
        this.cargarEducacion();
      },err =>{
        alert("No se pudo eliminar");
      }
    )
  }
 }




}
