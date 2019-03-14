package civilize;

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
@RequestMapping(value="/byb")
public class BybController {
	
	@Autowired
	private BybRepository bybRepo;
	
	@Autowired
	private BillRepository billRepo;
	
	@Autowired
	private FoodRepository foodRepo;

	
	@GetMapping("/bybcre")
	public String billcre(@RequestParam String byeName,@RequestParam Integer bybPrice,@RequestParam Integer bybQty, Model model) {
		Integer bybTotal = bybQty*bybPrice;
		Byb b = new Byb();
		b.setByeName(byeName);
		b.setBybPrice(bybPrice);
		b.setBybQty(bybQty);
		b.setBybTotal(bybTotal);
		
		bybRepo.save(b);
	return "redirect:/byb/byblist";
	}
	
			
	@GetMapping("/byblist")
	public String showmenu(Model model) {
		int total=0;
		List<Byb> list = bybRepo.findAll();
		model.addAttribute("bybList", list);
		model.addAttribute("total", total);
		return "order";
	}
	
	@GetMapping("/deletebyb/{bybId}")
	public String removebyb(@PathVariable Integer bybId) {
		bybRepo.remove(bybId);
		
		return "redirect:/byb/byblist";
	}
	
	@GetMapping("/compls")
	public String showbill(Model model) {
		int com=0;
		List<Bill> list = billRepo.findAll();
		model.addAttribute("billList", list);
		model.addAttribute("com", com);
		
		return "compls";
	}
	
	
	//ส่วนของ bill
	
	@GetMapping("/bill")
	public String billcreate(@RequestParam Integer billTotal,@RequestParam Integer receive, Model model) {
		//int i=1;
		//Bill b = new Bill();
		//b.setBillId(i);
		Integer compls =  receive-billTotal;
		//billRepo.save(bill);
		model.addAttribute("total", billTotal);
		model.addAttribute("receive", receive);
		model.addAttribute("compls", compls);
		return "/compls";
	
	}
	
}
