package org.sid.service;

import java.util.List;

import org.sid.entities.Produit;

public interface CatalogueService {
	public void addProduit(Produit p);
	public List<Produit> listProduits();
	public Produit getProduit(String idP);
	public void deleteProduit(String idP);
	public void updateProduit(Produit p);
}
