package myapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/{name}/Messages")
public class MessagesController {
    
    @RequestMapping("list")
    public ModelAndView list(@PathVariable String name) {
        ModelAndView result = new ModelAndView("mytemplate");
        
		result.addObject("name", name);
		result.addObject("hello", "world");
        
        return result;
    }
}