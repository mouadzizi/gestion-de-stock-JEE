
package org.sid.service;

import java.util.List;
import org.sid.dao.*;
import org.sid.entities.Produit;
import org.sid.entities.approvisenement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
@Transactional
public class catalogueServiceImplApprv implements catalogueServiceAppr {
	@Autowired
private catalogueDAOApprovi dao1;




	public void setDao1(catalogueDAOApprovi dao1) {
		this.dao1 = dao1;
	}

	@Override
	public void addApprovisenement(approvisenement p) {
		// TODO Auto-generated method stub
		dao1.addApprovisenement(p);

	}

	@Override
	public List<approvisenement> listApprovisenement() {
		// TODO Auto-generated method stub
		return dao1.listApprovisenements();
	}

	@Override
	public void updateApprovisenement(approvisenement p) {
		// TODO Auto-generated method stub
		dao1.updateApprovisenement(p);

	}




	@Override
	public approvisenement getApprovisenement(String ref) {
		// TODO Auto-generated method stub
		return dao1.getApprovisenement(ref);	
	}


	@Override
	public void deleteApprovisenement(String ref) {
		// TODO Auto-generated method stub
		dao1.deleteApprovisenement(ref);	

	}

}
