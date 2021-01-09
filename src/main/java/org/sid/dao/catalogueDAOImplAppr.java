package org.sid.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.sid.entities.Produit;
import org.sid.entities.approvisenement;
import org.apache.log4j.Logger;
import org.apache.log4j.Logger.*;
import org.sid.dao.*;
public class catalogueDAOImplAppr implements catalogueDAOApprovi {


Logger log=Logger.getLogger(this.getClass());


private Map<String, approvisenement> produits1=new HashMap<String, approvisenement>();

@Override
public void addApprovisenement(approvisenement p) {
	// TODO Auto-generated method stub
	 produits1.put(p.getCodePdt(), p);

}

@Override
public List<approvisenement> listApprovisenements() {
	// TODO Auto-generated method stub
	return new ArrayList<approvisenement>(produits1.values());
}

@Override
public void updateApprovisenement(approvisenement p) {
	// TODO Auto-generated method stub
	produits1.put(p.getCodePdt(),p);

}

@Override
public approvisenement getApprovisenement(String code) {
	// TODO Auto-generated method stub
	return produits1.get(code);
}

@Override
public void deleteApprovisenement(String code) {
	// TODO Auto-generated method stub
	 produits1.remove(code);

}

}
