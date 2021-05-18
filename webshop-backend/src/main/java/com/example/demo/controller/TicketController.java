package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.example.demo.model.Ticket;
import com.example.demo.repository.TicketRepository;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/")
public class TicketController {
	
	@Autowired
	private TicketRepository ticketRepository;
	
	@GetMapping("/tickets-list")
	public List<Ticket> getAllTickets(){
		return ticketRepository.findAll();
	}
	
	@PostMapping("/create-ticket")
	public Ticket createTicket(@RequestBody Ticket ticket) {
		return ticketRepository.save(ticket);
	}

}
