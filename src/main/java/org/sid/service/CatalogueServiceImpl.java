package org.sid.service;

import java.util.List;
import org.sid.dao.*;
import org.sid.entities.Produit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
@Transactional
public class CatalogueServiceImpl implements CatalogueService {
	@Autowired
private catalogueDAO dao;

	public void setDao(catalogueDAO dao) {
	this.dao = dao;
}

	public void addProduit(Produit p) {
		// TODO Auto-generated method stub
		dao.addProduit(p);
	}

	public List<Produit> listProduits() {
		// TODO Auto-generated method stub
return dao.listProduits();
}

	public Produit getProduit(String idP) {
		// TODO Auto-generated method stub
return dao.getProduit(idP);	}

	public void deleteProduit(String idP) {
		// TODO Auto-generated method stub
		dao.deleteProduit(idP);
	}

	public void updateProduit(Produit p) {
		// TODO Auto-generated method stub
		dao.updateProduit(p);
	}

}
