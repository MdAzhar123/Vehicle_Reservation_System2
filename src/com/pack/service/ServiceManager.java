package com.pack.service;

import java.util.List;

import com.pack.bean.AdminEntity;
import com.pack.bean.LoginEntity;
import com.pack.bean.VehicleEntity;

public interface ServiceManager {

	public void addVehicle(VehicleEntity vehicle);
	public void addAdmin(AdminEntity admin);
	public List<VehicleEntity> getAllVehicles();
	public AdminEntity loginAdmin(LoginEntity login);
	public AdminEntity getAdminById(String adminId);
	public void editAdmin(AdminEntity admin);
	public void deleteAdmin(String adminId);
	public void deleteVehicle(String vehicleNo);
	public VehicleEntity getVehicleById(String vehicleNo);
	public void editVehicle(VehicleEntity vehicle);
}
