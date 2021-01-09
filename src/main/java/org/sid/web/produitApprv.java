package org.sid.web;


import java.util.List;

import org.apache.log4j.Logger;
import org.sid.service.catalogueServiceAppr;
import org.springframework.beans.factory.annotation.Autowired;
import org.sid.entities.approvisenement;
import com.opensymphony.xwork2.ActionSupport;
public class produitApprv extends ActionSupport {
	public approvisenement approvisenement=new approvisenement();
	public List<approvisenement> produits1;
	public String code;
@Autowired
	private catalogueServiceAppr service1;
	Logger logger=Logger.getLogger(this.getClass());
public String index1() {
	produits1=service1.listApprovisenement();
	return SUCCESS;
}

public String execute() {
	service1.addApprovisenement(approvisenement);
	
	produits1=service1.listApprovisenement();
	return SUCCESS;
}
public String delete1() {
service1.deleteApprovisenement(code);
produits1=service1.listApprovisenement();
	return SUCCESS;
}

}
