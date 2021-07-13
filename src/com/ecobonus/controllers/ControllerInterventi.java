package com.ecobonus.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecobonus.entity.Intervento;
import com.ecobonus.entity.Regione;
import com.ecobonus.entity.TipoUtente;
import com.ecobonus.entity.User;
import com.ecobonus.service.InterventiService;
import com.ecobonus.service.RegioneService;
import com.ecobonus.service.TipoUtenteService;
import com.ecobonus.service.UserService;

@Controller
@RequestMapping("/interventi")
public class ControllerInterventi {

	@Autowired
	private RegioneService regioneService;
	
	@Autowired
	private InterventiService interventoService;
	
	@GetMapping("/list")
	public String listInterventi(Model theModel) {		
		List<Intervento> InterventiList = interventoService.getList();
		theModel.addAttribute("interventi", InterventiList);
		return "list-interventi";
	}
	
	@GetMapping("/delete")
	public String deleteIntervento(@RequestParam("idIntervento") int theIdIntervento) {
		interventoService.deleteIntervento(theIdIntervento);
		return "redirect:/interventi/list";
	}
	@GetMapping("/showFormUpdateIntervento")
	public String showFormUpdateIntervento(@RequestParam("idIntervento") int theIdIntervento,
									Model theModel) {
		Intervento intervento = interventoService.getIntervento(theIdIntervento);	
		List<Regione> regioniList = regioneService.getRegioni();
		theModel.addAttribute("intervento", intervento);
		theModel.addAttribute("regioni", regioniList);
		return "interventi-form";
	}
	@PostMapping("/saveIntervento")
	public String saveIntervento(@ModelAttribute("interventi") Intervento interventi, @RequestParam("idIntervento") int theIdIntervento, 
			@RequestParam("idRegione") int idRegione ) {	
		Regione regione = regioneService.getRegione(idRegione);
		interventi.setRegione(regione);
		interventoService.saveIntervento(interventi);		
		return "redirect:/interventi/list";
	}
	@GetMapping("/showFormAddIntervento")
	public String showFormAddIntervento(@RequestParam("idIntervento") int idIntervento, Model theModel ) {
		Intervento intervento = interventoService.getIntervento(idIntervento);	
		theModel.addAttribute("intervento", intervento);	
		return "interventi-form";
	}
}
