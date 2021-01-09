package org.sid.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.sid.entities.Produit;
import org.apache.log4j.Logger;
import org.apache.log4j.Logger.*;

public class CatalogueDaoImpl implements catalogueDAO {

private Map<String, Produit> produits=new HashMap<String, Produit>();

Logger log=Logger.getLogger(this.getClass());
@Override
public void addProduit(Produit p) {
	// TODO Auto-generated method stub
	 produits.put(p.getCodePdt(), p);
	
}

@Override
public List<Produit> listProduits() {
	// TODO Auto-generated method stub
	return new ArrayList<Produit>(produits.values());
}

@Override
public Produit getProduit(String ref) {
	// TODO Auto-generated method stub
return produits.get(ref);
}

@Override
public void deleteProduit(String ref) {
	// TODO Auto-generated method stub
	produits.remove(ref);
}

@Override
public void updateProduit(Produit p) {
	// TODO Auto-generated method stub
	produits.put(p.getCodePdt(),p);
}

}
