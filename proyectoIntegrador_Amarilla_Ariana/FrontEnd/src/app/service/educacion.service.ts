import { Injectable } from '@angular/core';
import { Educacion } from '../model/educacion';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class EducacionService {
URL = 'http://localhost:8080/educacion/'


  constructor(private httpClient :HttpClient) { }

  public lista(): Observable<Educacion[]>{

    return this.httpClient.get<Educacion[]>(this.URL + 'lista');
  }
  public detail(id:number): Observable<Educacion>{
    return this.httpClient.get<Educacion>(this.URL + `detail/$`)
  }
  public save(educacion :Educacion): Observable<any>{
    return this.httpClient.post<any>(this.URL + 'create', educacion);
  }

  public update(id:number, educacion:Educacion):Observable<any>{
    return this.httpClient.put<any>(this.URL + `update/${id}` , educacion);
  }

  public delete(id:number):Observable<any>{
    return this.httpClient.delete<any>(this.URL + `delete/${id}`);
  }
}
