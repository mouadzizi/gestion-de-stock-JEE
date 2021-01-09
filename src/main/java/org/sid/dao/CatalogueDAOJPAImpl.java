package org.sid.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.sid.entities.Produit;
import org.springframework.transaction.annotation.Transactional;

public class CatalogueDAOJPAImpl implements catalogueDAO {

	@PersistenceContext
	private EntityManager em ;

	public void addProduit(Produit p) {
		// TODO Auto-generated method stub
		em.persist(p);
	}

	@Override
	public List<Produit> listProduits() {
		// TODO Auto-generated method stub
		Query req=em.createQuery("select p from Produit p");
		return req.getResultList();
	}

	@Override
	public Produit getProduit(String ref) {
		// TODO Auto-generated method stub
		return em.find(Produit.class, ref);
	}

	@Override
	public void deleteProduit(String ref) {
		// TODO Auto-generated method stub
		Produit p=getProduit(ref);
		em.remove(p);
	}

	@Override
	public void updateProduit(Produit p) {
		// TODO Auto-generated method stub
		em.merge(p);
	}

}
