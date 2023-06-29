import { HttpClient} from '@angular/common/http';
import { Injectable } from '@angular/core';
import { persona } from '../model/persona.model';
import { Observable } from 'rxjs';
import { environment } from '../environment/environment';


@Injectable({
  providedIn: 'root'
})
export class PersonaService {
  private readonly URL = `${environment.URL}/personas`;

  constructor(private httpClient: HttpClient){}
/*
  public getPersona():Observable<persona>{
    return this.http.get<persona>(`${this.URL}/obtener/perfil`);
  }*/
  public lista(): Observable<persona[]>{

    return this.httpClient.get<persona[]>(`${this.URL}/lista`);
  }
  public detail(id:number): Observable<persona>{
    return this.httpClient.get<persona>(`${this.URL}/detail/${id}`)
  }
  
  public save(Persona : persona): Observable<any>{
    return this.httpClient.post<any>(`${this.URL}/create`, Persona);
  }
 
  public update(id:number, Persona:persona):Observable<any>{
    return this.httpClient.put<any>(`${this.URL}/update/${id}` , Persona);
  } 

  public delete(id:number):Observable<any>{
    return this.httpClient.delete<any>(`${this.URL}/delete/${id}`);
  }
  
}
