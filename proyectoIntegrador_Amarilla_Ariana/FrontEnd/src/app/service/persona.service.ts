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

  constructor(private http: HttpClient){}

  public getPersona():Observable<persona>{
    return this.http.get<persona>(`${this.URL}/obtener/perfil`);
  }
  
}
