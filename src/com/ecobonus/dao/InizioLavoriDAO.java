package com.ecobonus.dao;

import java.util.List;

import com.ecobonus.entity.InizioLavori;


public interface InizioLavoriDAO {
	public List<InizioLavori> getList();
	public void saveInizioLavori(InizioLavori inizioLavori);
	public InizioLavori getInizioLavori(int inizioLavori);
	public void deleteInizioLavori(int inizioLavori);
}
