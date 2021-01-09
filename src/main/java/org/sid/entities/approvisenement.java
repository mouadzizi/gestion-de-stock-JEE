package org.sid.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

import java.io.Serializable;
import java.sql.Date;
@SuppressWarnings("serial")
@Entity
public class approvisenement implements Serializable {
 	@Id
	private String codePdt;
 	
	private int qtecommande;
	
	private Date datePrevueLivraison;

	public String getCodePdt() {
		return codePdt;
	}

	public void setCodePdt(String codePdt) {
		this.codePdt = codePdt;
	}

	public int getQtecommande() {
		return qtecommande;
	}

	public void setQtecommande(int qtecommande) {
		this.qtecommande = qtecommande;
	}

	public Date getDatePrevueLivraison() {
		return datePrevueLivraison;
	}

	public void setDatePrevueLivraison(Date datePrevueLivraison) {
		this.datePrevueLivraison = datePrevueLivraison;
	}

	public approvisenement(String codePdt, int qtecommande, Date datePrevueLivraison) {
		super();
		this.codePdt = codePdt;
		this.qtecommande = qtecommande;
		this.datePrevueLivraison = datePrevueLivraison;
	}

	public approvisenement() {
		super();
	}



	
	
	
	
}
