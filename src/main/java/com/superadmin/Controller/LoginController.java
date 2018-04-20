package com.superadmin.Controller;

import com.superadmin.Model.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * Created by SP on 11/1/2017.
 */
@Controller
public class LoginController {

    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(@RequestParam(value = "logout", required = false) String logout, Model model){
        if(logout != null){
            model.addAttribute("logout", "You have been successfully logged out");
        }

        return "login";
    }

    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String processLogin(HttpServletRequest request, HttpSession session, Model model, PrintWriter out){
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        if(userName.isEmpty()){
            model.addAttribute("message", "Specify username and password");
            model.addAttribute("userName", userName);
            return "/login";
        }
        if(password.isEmpty()){
            model.addAttribute("message", "Specify username and password");
            model.addAttribute("password", password);
            return "/login";
        }

        RestTemplate restTemplate = new RestTemplate();
        String url = "http://192.168.50.60:8000/login/" + userName + "/" + password;
        UserDetails userDetails = restTemplate.getForObject(url, UserDetails.class);
        System.out.println("User Details " +userDetails);
        if (userDetails.getCode() != null) {
            String message = userDetails.getMessage();
            model.addAttribute("message", message);
            return "/login";
        }else{
            String fullName = userDetails.getFirst_name() + " " + userDetails.getLast_name();
            session.setAttribute("username", userDetails.getUsername());
            session.setAttribute("first_name", userDetails.getFirst_name());
            session.setAttribute("last_name", userDetails.getLast_name());
            session.setAttribute("full_name", fullName);
            session.setAttribute("email", userDetails.getEmail());
            session.setAttribute("phone_NO", userDetails.getPhone_NO());
            session.setAttribute("address", userDetails.getAddress());
            session.setAttribute("city", userDetails.getCity());
            session.setAttribute("state", userDetails.getState());
            session.setAttribute("last_login", userDetails.getLast_login());
            session.setAttribute("is_superuser", userDetails.getIs_superuser());
            session.setAttribute("is_active", userDetails.getIs_active());
            session.setAttribute("practitioner", userDetails.getPractitioner());
            session.setAttribute("institution", userDetails.getInstitution());

            if(userDetails.getIs_active() != 1){
                session.setAttribute("errorMessage", "Your Account Has Been Deactivated");
                out.print(userDetails);
                return "redirect:/login";

            }
            return "/dashboard";

        }

    }

    @RequestMapping(value = "/logout")
    public String processLogout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/login?logout";
    }
}
