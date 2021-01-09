package org.sid.web;




import java.util.List;

import org.apache.log4j.Logger;
import org.sid.entities.Produit;
import org.sid.service.CatalogueService;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

public class modifierAction extends ActionSupport {
	public Produit produit=new Produit();
	public List<Produit> produits;
	public String ref;
	public boolean editMode=false;
@Autowired
	private CatalogueService service;
	Logger logger=Logger.getLogger(this.getClass());
public String index() {
	produits=service.listProduits();
	return SUCCESS;
}
public String modifier() {
	if(editMode==true) {
	
		service.updateProduit(produit);
		editMode=false;
		produit=new Produit();} 
	produits=service.listProduits();
	return SUCCESS;}
}
