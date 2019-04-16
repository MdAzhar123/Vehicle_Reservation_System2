package com.pack.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.pack.bean.AdminEntity;
import com.pack.bean.LoginEntity;
import com.pack.bean.VehicleEntity;

@Repository
public class EntityDaoImpl implements EntityDao, UserDetailsService {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addVehicle(VehicleEntity vehicle) {
		this.sessionFactory.getCurrentSession().save(vehicle);
	}

	@Override
	public List<VehicleEntity> getAllVehicles() {
		return this.sessionFactory.getCurrentSession().createQuery("from Vehicle").list();
	}

	@Override
	public void addAdmin(AdminEntity admin) {
		System.out.println("In dao");
		this.sessionFactory.getCurrentSession().save(admin);
	}

	@Override
	public AdminEntity loginAdmin(LoginEntity login) {
		System.out.println("-----------------------------------------------------");
		AdminEntity l1 = null;
		Session s = this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Query q = s.createQuery("from Employee l where l.adminId=:adminId and l.password=:password");
		q.setParameter("adminId", login.getUsername());
		q.setParameter("password", login.getPassword());
		l1 = (AdminEntity) q.uniqueResult();
		return l1;
	}

	@Override
	public AdminEntity getAdminById(String adminId) {
		AdminEntity l1 = null;
		Session s = this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Query q = s.createQuery("from Employee l where l.adminId=:adminId");
		q.setParameter("adminId", adminId);
		l1 = (AdminEntity) q.uniqueResult();
		return l1;
	}

	@Override
	public void editAdmin(AdminEntity admin) {
		this.sessionFactory.getCurrentSession().update(admin);
	}

	@Override
	public void deleteAdmin(String adminId) {
		AdminEntity admin = (AdminEntity) sessionFactory.getCurrentSession().load(AdminEntity.class, adminId);
		if (null != admin) {
			this.sessionFactory.getCurrentSession().delete(admin);
		}
	}

	@Override
	public void deleteVehicle(String vehicleNo) {
		VehicleEntity vehicle = (VehicleEntity) sessionFactory.getCurrentSession().load(VehicleEntity.class, vehicleNo);
		if (null != vehicle) {
			this.sessionFactory.getCurrentSession().delete(vehicle);
		}
	}

	@Override
	public VehicleEntity getVehicleById(String vehicleNo) {
		VehicleEntity v1 = null;
		Session s = this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Query q = s.createQuery("from Vehicle v where v.vehicleNo=:vehicleNo");
		q.setParameter("vehicleNo", vehicleNo);
		v1 = (VehicleEntity) q.uniqueResult();
		return v1;
	}

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {
		System.err.println("Getting access details from employee dao !!");
		System.err.println(username);
		Session s = this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Query q = s.createQuery("from Employee l where l.adminId=:user");
		q.setParameter("user", username);
		AdminEntity l1 = (AdminEntity) q.uniqueResult();
		UserDetails user = null;
		if (l1 != null) {
			System.err.println("inside validation method()");

			user = new User(l1.getAdminId(), l1.getPassword(), true, true, true, true,
					new GrantedAuthority[] { new GrantedAuthorityImpl("ROLE_USER") });
		}
		t.commit();
		s.close();
		System.err.println("valid user " + user);
		return user;
	}

	@Override
	public void editVehicle(VehicleEntity vehicle) {
		this.sessionFactory.getCurrentSession().update(vehicle);
	}
}
