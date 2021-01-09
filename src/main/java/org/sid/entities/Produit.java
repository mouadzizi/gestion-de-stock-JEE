package org.sid.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
public class Produit implements Serializable {
	@Id
	
	private String codePdt;
	private String nomPdt;
	private int qtePdt;
	
	private String descPdt;
	private int prixPdt;
	public String getCodePdt() {
		return codePdt;
	}
	public void setCodePdt(String codePdt) {
		this.codePdt = codePdt;
	}
	public String getNomPdt() {
		return nomPdt;
	}
	public void setNomPdt(String nomPdt) {
		this.nomPdt = nomPdt;
	}
	public int getQtePdt() {
		return qtePdt;
	}
	public void setQtePdt(int qtePdt) {
		this.qtePdt = qtePdt;
	}
	
	public String getDescPdt() {
		return descPdt;
	}
	public void setDescPdt(String descPdt) {
		this.descPdt = descPdt;
	}
	public int getPrixPdt() {
		return prixPdt;
	}
	public void setPrixPdt(int prixPdt) {
		this.prixPdt = prixPdt;
	}
	public Produit() {
		super();
	}
	public Produit(String codePdt, String nomPdt, int qtePdt, String descPdt, int prixPdt) {
		super();
		this.codePdt = codePdt;
		this.nomPdt = nomPdt;

		this.qtePdt = qtePdt;
		this.descPdt = descPdt;
		this.prixPdt = prixPdt;
	}
	
	
}
