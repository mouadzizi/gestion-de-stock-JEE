package org.sid.dao;

import java.util.List;

import org.sid.entities.approvisenement;

public interface catalogueDAOApprovi {
	public void addApprovisenement(approvisenement p);
	public List<approvisenement> listApprovisenements();
	public void updateApprovisenement(approvisenement p);
	public approvisenement getApprovisenement(String code);
	void deleteApprovisenement(String code);
}
