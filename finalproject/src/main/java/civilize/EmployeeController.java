package civilize;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/emp")
public class EmployeeController {
	@Autowired
	private EmployeeRepository EmpRepo;

	@GetMapping("/signup")
	public String signup(@ModelAttribute Employee employee, Model model) {
		EmpRepo.insert(employee);
		return "redirect:/food/home";
	}
	
	
	
	
	
}