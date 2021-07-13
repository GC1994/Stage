package com.ecobonus.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ecobonus.entity.Regione;

@Service
public interface RegioneService {
	public List<Regione> getRegioni();
	public void saveRegione(Regione theRegione);
	public Regione getRegione(int theIdRegione);
	public void deleteRegione(int theIdRegione);
}
