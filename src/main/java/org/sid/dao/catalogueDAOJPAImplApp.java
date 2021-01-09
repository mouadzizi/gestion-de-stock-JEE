package org.sid.dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.sid.entities.approvisenement;
import org.springframework.transaction.annotation.Transactional;

public class catalogueDAOJPAImplApp implements catalogueDAOApprovi {

	@PersistenceContext
	private EntityManager em1 ;




	@Override
	public void addApprovisenement(approvisenement p) {
		// TODO Auto-generated method stub
		em1.persist(p);
		

	}

	@Override
	public List<approvisenement> listApprovisenements() {
		// TODO Auto-generated method stub
		Query req=em1.createQuery("select p from approvisenement p");
		return req.getResultList();
	}

	@Override
	public void updateApprovisenement(approvisenement p) {
		// TODO Auto-generated method stub
		em1.merge(p);

	}

	@Override
	public approvisenement getApprovisenement(String code) {
		// TODO Auto-generated method stub
		return em1.find(approvisenement.class, code);
	}

	@Override
	public void deleteApprovisenement(String code) {
		// TODO Auto-generated method stub
		approvisenement p=getApprovisenement(code);
		em1.remove(p);

	}

}
