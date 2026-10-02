package com.nt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nt.entity.Employee;
import com.nt.service.HomeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;

	@RequestMapping("/registerUser")
	public String registerUser(@ModelAttribute Employee e, Model model) {

		boolean isAdded = homeService.registerUser(e);

		if (isAdded) {
			model.addAttribute("successMsg", "Record added successfully...!");
		} else {
			model.addAttribute("errorMsg", "unable to add record");
		}

		return "login";
	}

	@RequestMapping("/loginUser")
	public String loginUser(@RequestParam("userName") String userName, @RequestParam("password") String password,
			HttpSession session, Model model) {
		boolean logging = homeService.loginUser(userName, password);
		if (logging) {
			session.setAttribute("userName", userName);
			List<Employee> empList = homeService.getAllUsers();
			model.addAttribute("list", empList);
			return "dashboard.jsp";
		} else {
			return "login.jsp";
		}

	}

	@GetMapping("/updateUser")
	public String updateUser(@RequestParam("id") int id, Model model) {

	    List<Employee> list = homeService.getAllUsers();

	    for (Employee e : list) {

	        if (e.getId() == id) {
	            model.addAttribute("e", e);
	            break;
	        }
	    }

	    return "updateUser.jsp";
	}

	@PostMapping("/updateUser")
	public String updateUserData(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("userName") String userName, @RequestParam("salary") float salary, Model model) {

		boolean result = homeService.updateUser(id, name, userName, salary);

		if (result) {
			System.out.println("User updated successfully");
			List<Employee> empList = homeService.getAllUsers();
			model.addAttribute("list", empList);
		} else {
			System.out.println("User update failed");
		}

		return "dashboard.jsp";
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(@RequestParam("id") int id,Model model) {
		 boolean isDeleted = homeService.deleteUser(id);
		 if(isDeleted) {
			 model.addAttribute("dsuccessMsg", "Record Deleted successfully...!");
			 List<Employee> empList = homeService.getAllUsers();
			 model.addAttribute("list", empList);
			 return "dashboard.jsp";
		 }else {
			 model.addAttribute("derrorMsg", "Some issue for deleting record..!");
			 List<Employee> empList = homeService.getAllUsers();
			 model.addAttribute("list", empList);
			 return "dashboard.jsp";
		 }
	}
}
