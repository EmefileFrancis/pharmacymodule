package com.superadmin.Controller;

import com.superadmin.Model.InstitutionType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import java.util.List;

/**
 * Created by SP on 10/26/2017.
 */
@Controller
public class HomeController {

    @RequestMapping(value ="/", method = RequestMethod.GET)
    public String home(){ return "dashboard"; }

    @RequestMapping(value="/dashboard", method = RequestMethod.GET)
    public String dashboard(Model model){
        /*RestTemplate restTemplate = new RestTemplate();
        String url = "http://192.168.50.60:8000/practitioner/";
        List<Practitioner> practitioners = restTemplate.getForObject(url, List.class);
        model.addAttribute("practitioners", practitioners);*/
        return "/WEB-INF/views/dashboard.jsp";
    }

    @RequestMapping("/viewInstitution")
    public String viewInstitution(){
        return "viewInstitution";
    }

    @RequestMapping("/addInstitutionType")
    public String addInstitutionType(){
        return "addInstitutionType";
    }

    @RequestMapping("/addPractitioner")
    public String addPractitioner(){
        return "addPractitioner";
    }
}
