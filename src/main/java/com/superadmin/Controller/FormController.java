package com.superadmin.Controller;

import com.superadmin.Model.InstitutionType;
import com.superadmin.Model.Practitioner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import java.util.List;

/**
 * Created by SP on 11/13/2017.
 */
@Controller
public class FormController {

    @RequestMapping(value="/addInstitution", method = RequestMethod.GET)
    public String initAddInstitution(Model model){
        RestTemplate restTemplate = new RestTemplate();
        String url = "http://192.168.50.60:8000/institutetype/";
        List<InstitutionType> institutionTypeList = restTemplate.getForObject(url, List.class);
        model.addAttribute("institutionTypeList", institutionTypeList);
        return "addInstitution";
    }

    @RequestMapping(value="/addPractitioner", method=RequestMethod.GET)
    public String initAddPractitioner(Model model){
        RestTemplate restTemplate = new RestTemplate();
        String url1 = "http://192.168.50.60:8000/practitioner/";
        String url2 = "http://192.168.50.60:8000/institutetype/";
        List<Practitioner> practitioners = restTemplate.getForObject(url1, List.class);
        List<InstitutionType> institutionTypes = restTemplate.getForObject(url2, List.class);
        model.addAttribute("practitioners", practitioners);
        model.addAttribute("institutionTypes", institutionTypes);
        return "addPractitioner";
    }

}
