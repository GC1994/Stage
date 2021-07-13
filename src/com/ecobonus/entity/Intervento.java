package com.ecobonus.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "interventi")
public class Intervento {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idIntervento")
    private int idIntervento;
	
	@OneToOne(mappedBy="interventi", cascade = CascadeType.ALL)
    private InizioLavori idInizioLavori;
	

    @Column(name = "CodSede")
    private String codSede;

    @Column(name = "CodiceTipoIntervento")
    private String codiceTipoIntervento;
    
    @Column(name = "Descrizione")
    private String descrizione;
    
    @Column(name = "Referente")
    private String referente;

    @Column(name = "Contatto")
    private String contatto;
    
    @Column(name = "Cliente")
    private String cliente;

	@ManyToOne
    @JoinColumn(name="IdRegione")
    private Regione regione;
	
	@Override
	public String toString() {
		return "Interventi [idIntervento=" + idIntervento + ", codSede=" + codSede + ", codiceTipoIntervento="
				+ codiceTipoIntervento + ", descrizione=" + descrizione + ", referente=" + referente + ", contatto="
				+ contatto + ", cliente=" + cliente + ", idRegione=" + regione + "]";
	}

	public Intervento() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getIdIntervento() {
		return idIntervento;
	}

	public void setIdIntervento(int idIntervento) {
		this.idIntervento = idIntervento;
	}

	public String getCodSede() {
		return codSede;
	}

	public void setCodSede(String codSede) {
		this.codSede = codSede;
	}

	public String getCodiceTipoIntervento() {
		return codiceTipoIntervento;
	}

	public void setCodiceTipoIntervento(String codiceTipoIntervento) {
		this.codiceTipoIntervento = codiceTipoIntervento;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getReferente() {
		return referente;
	}

	public void setReferente(String referente) {
		this.referente = referente;
	}

	public String getContatto() {
		return contatto;
	}

	public void setContatto(String contatto) {
		this.contatto = contatto;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public Regione getRegione() {
		return regione;
	}

	public void setRegione(Regione regione) {
		this.regione = regione;
	}

	public InizioLavori getIdInizioLavori() {
		return idInizioLavori;
	}

	public void setIdInizioLavori(InizioLavori idInizioLavori) {
		this.idInizioLavori = idInizioLavori;
	}

	
}
