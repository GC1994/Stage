package com.ecobonus.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "iniziolavori")
public class InizioLavori {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idiniziolavori")
    private int idInizioLavori;


    @Column(name = "dataInizio")
    private String dataInizio;
    
    @Column(name = "Descrizione")
    private String descrizione;
    

    @OneToOne
    @PrimaryKeyJoinColumn
    private Intervento idIntervento;
	
	public Intervento getIntervento() {
		return idIntervento;
	}

	public void setIntervento(Intervento idIntervento) {
		this.idIntervento = idIntervento;
	}

	@Override
	public String toString() {
		return "Interventi [idiInizioLavori =" + idInizioLavori + ", dataInizio=" + dataInizio + ", Descrizione="
				+ descrizione + "]";
	}

	public InizioLavori() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdInizioLavori() {
		return idInizioLavori;
	}

	public void setIdInizioLavori(int idiInizioLavori) {
		this.idInizioLavori = idiInizioLavori;
	}


	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getDataInizio() {
		return dataInizio;
	}

	public void setDataInizio(String dataInizio) {
		this.dataInizio = dataInizio;
	}



}
