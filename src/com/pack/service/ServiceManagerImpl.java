package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.bean.AdminEntity;
import com.pack.bean.LoginEntity;
import com.pack.bean.VehicleEntity;
import com.pack.dao.EntityDao;

@Service
public class ServiceManagerImpl implements ServiceManager {

	@Autowired
    private EntityDao entityDao;

	@Override
	@Transactional
	public void addVehicle(VehicleEntity vehicle) {
		entityDao.addVehicle(vehicle);
	}

	@Override
	@Transactional
	public List<VehicleEntity> getAllVehicles() {
		return entityDao.getAllVehicles();
	}

	/*@Override
	@Transactional
	public void setVehicleDao(EntityDao vehicleDao) {
		this.entityDao = vehicleDao;
	}
*/
	@Override
	@Transactional
	public void addAdmin(AdminEntity admin) {
		System.out.println("In service");
		entityDao.addAdmin(admin);
	}

	@Override
	@Transactional
	public AdminEntity loginAdmin(LoginEntity login) {
		AdminEntity l = null;
		l=entityDao.loginAdmin(login);
		return l;
	}

	@Override
	@Transactional
	public AdminEntity getAdminById(String adminId) {
		AdminEntity l = null;
		l=entityDao.getAdminById(adminId);
		return l;
	}

	@Override
	@Transactional
	public void editAdmin(AdminEntity admin) {
		entityDao.editAdmin(admin);
	}

	@Override
	@Transactional
	public void deleteAdmin(String adminId) {
		entityDao.deleteAdmin(adminId);
	}

	@Override
	@Transactional
	public void deleteVehicle(String vehicleNo) {
		entityDao.deleteVehicle(vehicleNo);
	}

	@Override
	@Transactional
	public VehicleEntity getVehicleById(String vehicleNo) {
		 
		return entityDao.getVehicleById(vehicleNo);
	}

	@Override
	public void editVehicle(VehicleEntity vehicle) {
		entityDao.editVehicle(vehicle);
	}

	
}
