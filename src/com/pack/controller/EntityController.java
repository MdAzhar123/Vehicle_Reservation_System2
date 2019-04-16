package com.pack.controller;

import java.util.Random;

/*import org.apache.catalina.servlet4preview.http.HttpServletRequest;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pack.bean.AdminEntity;
import com.pack.bean.LoginEntity;
import com.pack.bean.VehicleEntity;
import com.pack.service.ServiceManager;

@Controller
public class EntityController {

	@Autowired
	private ServiceManager serviceManager;

	public void setVehicleManager(ServiceManager vehicleManager) {
		this.serviceManager = vehicleManager;
	}

	@RequestMapping(value = "/addVehicle", method = RequestMethod.POST)
	public String addVehicle(@ModelAttribute(value = "vehicle") VehicleEntity vehicle, BindingResult result) {
		serviceManager.addVehicle(vehicle);
		return "redirect:/list";

	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defaultPage(ModelMap map) {
		return "redirect:/home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("login", new AdminEntity());
		return "login";
	}
	
	
	
	 @RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	    public String loginerror(ModelMap model) {
	        model.addAttribute("error", "true");
	        return "denied";
	    }
	
	
	 @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(ModelMap model) {
	        return "logout";
	    }
	

	@RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
	public String addAdmin(@ModelAttribute(value = "admin") AdminEntity admin, BindingResult result) {
		System.err.println();
		Random r = new Random();
		int num = r.nextInt(900000) + 100000;
		System.out.println("-------------------------------");
		admin.setAdminId("ABC" + String.valueOf(num));

		serviceManager.addAdmin(admin);
		return "redirect:/login";

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(ModelMap model) {
		model.addAttribute("admin", new AdminEntity());
		return "register";

	}

	/*
	 * @RequestMapping(value = "/home",method = RequestMethod.GET) public String
	 * loginAdmin(@ModelAttribute(value = "home") AdminEntity login, ModelMap
	 * model) { String l = "home"; AdminEntity l1 = null; l1 = (AdminEntity)
	 * serviceManager.loginAdmin(login); if(l1 != null){ l="home";
	 * model.addAttribute("currentAdmin", l1); } model.addAttribute("login", new
	 * AdminEntity()); return l; }
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String loginAdmin(ModelMap model) {
		String l = "home";
		/*
		 * AdminEntity l1 = null; l1 = (AdminEntity)
		 * serviceManager.loginAdmin(login); if(l1 != null){ l="home";
		 * model.addAttribute("currentAdmin", l1); }
		 */
		model.addAttribute("login", new AdminEntity());
		return l;
	}

	/*
	 * @RequestMapping(value = "/homeAgain") public String homeAgain(ModelMap
	 * model){ AdminEntity l1 = null; l1 = (AdminEntity)
	 * serviceManager.getAdminById(adminId); model.addAttribute("currentAdmin",
	 * l1); return "redirect:/home"; }
	 */

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String goCreate(ModelMap model) {
		model.addAttribute("create", new VehicleEntity());
		return "create";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String goSearch(ModelMap model) {
		model.addAttribute("searchVehicle", new VehicleEntity());
		return "search";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String goList(ModelMap model) {
		model.addAttribute("vehicle", new VehicleEntity());
		model.addAttribute("vehicleList", serviceManager.getAllVehicles());
		return "list";
	}

	@RequestMapping(value = "/editAdmin/", method = RequestMethod.GET)
	public String goEditAdmin(ModelMap model, Authentication authentication) {
		AdminEntity l1 = null;
		String adminId = "";
		adminId = authentication.getName();
		System.out.println("inside edit admin" + adminId);
		l1 = (AdminEntity) serviceManager.getAdminById(adminId);
		model.addAttribute("currentAdmin1", l1);
		return "updateAdmin";
	}

	@RequestMapping(value = "/editAdmin/editCurrentAdmin", method = RequestMethod.POST)
	public String editAdmin(@ModelAttribute(value = "currentAdmin1") AdminEntity admin, ModelMap model) {
		serviceManager.editAdmin(admin);
		return "redirect:/home";
	}

	@RequestMapping(value = "/deleteAdmin/", method = RequestMethod.GET)
	public String deleteAdmin(Authentication authentication, ModelMap model) {
		AdminEntity l1 = null;
		String adminId = "";
		adminId = authentication.getName();
	    
		serviceManager.deleteAdmin(adminId);
		return "redirect:/login";
	}

	@RequestMapping("/delete/{vehicleNo}")
	public String deleteVehicle(@PathVariable("vehicleNo") String vehicleNo) {
		
		
		serviceManager.deleteVehicle(vehicleNo);
		return "redirect:/list";
	}

	@RequestMapping("/edit/{vehicleNo}")
	public String goEditVehicle(@PathVariable("vehicleNo") String vehicleNo, ModelMap model) {
		VehicleEntity v1 = null;
		v1 = (VehicleEntity) serviceManager.getVehicleById(vehicleNo);
		if(v1==null)
		System.out.println("--------------------------------------------------");
		else{
			System.out.println(v1.toString());
		}
		
		/*model.addAttribute("vehicle", v1);*/
		model.addAttribute("vehicle1", new VehicleEntity());
		model.addAttribute("vehicle",v1);
		return "updateVehicle";
	}
/*
	@RequestMapping(value = "/edit/editCurrentVehicle", method = RequestMethod.POST)
	public String editVehicle(@ModelAttribute(value = "currentVehicle") VehicleEntity vehicle, ModelMap model) {
		serviceManager.editVehicle(vehicle);
		return "redirect:/list";
	}
*/
	@RequestMapping(value = "/editCurrentVehicle", method = RequestMethod.POST)
	public String editVehicle(@ModelAttribute(value = "vehicle") VehicleEntity vehicle, ModelMap model) {
		serviceManager.editVehicle(vehicle);
		return "redirect:/list";
	}

	
	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.POST) public
	 * String logout(@ModelAttribute(value ="emp") ModelMap model) { return
	 * "logout"; }
	 * 
	 * @RequestMapping(value = "/log", method = RequestMethod.GET) public String
	 * login() { return "log"; }
	 */

}
