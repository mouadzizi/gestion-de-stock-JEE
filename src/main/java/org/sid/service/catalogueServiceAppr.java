package org.sid.service;

import java.util.List;

import org.sid.entities.approvisenement;

public interface catalogueServiceAppr {
	public void addApprovisenement(approvisenement p);
	public List<approvisenement> listApprovisenement();
	public void updateApprovisenement(approvisenement p);
	public approvisenement getApprovisenement(String ref);
	public void deleteApprovisenement(String ref);
}
