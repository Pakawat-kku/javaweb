package civilize;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;

@Controller
public class FirstController {
 
    @GetMapping("/")
    public String welcome(Model model) {
    	model.addAttribute("message", "Civilized Land");
        return "/home";
    }
    

}
