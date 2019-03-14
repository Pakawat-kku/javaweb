package civilize;

import java.util.ArrayList;
import java.util.List;

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
@RequestMapping(value="/food")
public class FoodController {
	@Autowired
	private FoodRepository foodRepo;
	
	@GetMapping("/home")
	public String home(Model model) {
		
		return "home";
	}
	
	@GetMapping("/insertfood")
	public String insert(Model model) {
		
		return "insertfood";
	}
		
	@GetMapping("/menu")
	public String showmenu(Model model) {
		List<Food> list = foodRepo.findAll();
		model.addAttribute("foodList", list);
		return "menu";
	}
		
	@GetMapping("/menuedit")
	public String showmenuedit(Model model) {
		List<Food> list = foodRepo.findAll();
		model.addAttribute("foodList", list);
		return "menuedit";
	}
	
		
	@GetMapping("/editform/{foodId}")
	public String loadFood(@PathVariable Integer foodId, Model model) {
		Food b = foodRepo.findById(foodId);
		model.addAttribute("food", b);
		return "editform";
	}
	
	@GetMapping("/edit")
	public String editFood(@ModelAttribute Food b) {
		Food oldFood = foodRepo.findById(b.getFoodId());
		oldFood.setFoodName(b.getFoodName());
		oldFood.setFoodStatus(b.getFoodStatus());
		oldFood.setPrice(b.getPrice());
		foodRepo.insert(oldFood);
		return "redirect:/food/menuedit";
	}
	
	@GetMapping("/remove/{foodId}")
	public String removeFood(@PathVariable Integer foodId) {
		foodRepo.remove(foodId);
		return "redirect:/food/menuedit";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam("keyword") String key, Model model) {
		List<Food> list = foodRepo.search(key);
		model.addAttribute("foodList", list);
		return "home";		
	}
	
	@PostMapping("/create")
	public String create(@ModelAttribute Food food, Model model) {
		foodRepo.insert(food);
		return "redirect:/food/menuedit";
	}
	
	@GetMapping("/beforebyb/{foodId}")
	public String beforebyb(@PathVariable Integer foodId, Model model) {
		Food b = foodRepo.findById(foodId);
		model.addAttribute("food", b);
		return "beforebyb";
	}
	
	
}