package com.pack.dao;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;

import com.pack.bean.AdminEntity;
import com.pack.bean.LoginEntity;
import com.pack.bean.VehicleEntity;


public interface EntityDao {

	public void addVehicle(VehicleEntity employee);
    public List<VehicleEntity> getAllVehicles();
    public void addAdmin(AdminEntity admin);
    public AdminEntity loginAdmin(LoginEntity login);
    public AdminEntity getAdminById(String adminId);
    public void editAdmin(AdminEntity admin);
    public void deleteAdmin(String adminId);
    public void deleteVehicle(String vehicleNo);
    public VehicleEntity getVehicleById(String vehicleNo);
    public void editVehicle(VehicleEntity vehicle);
    public UserDetails loadUserByUsername(String username);
    
}
