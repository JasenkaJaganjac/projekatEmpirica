import { Ticket } from './ticket';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class TicketService {

  private baseURL="http://localhost:8080/api/v1/tickets-list";
  constructor(private httpClient: HttpClient) { }

getTicketList():Observable<Ticket[]>{
  return this.httpClient.get<Ticket[]>(`${this.baseURL}`);
}

createTicket(ticket: Ticket): Observable<Object>{
  return this.httpClient.post(`${this.baseURL}`, ticket);
}
}
