package com.codingdojo.OmikujiForm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class OmikujiController {
    @GetMapping("/omikuji")
    public String showForm(){
        return "form.jsp";
    }

    @PostMapping("/omikuji")
    public String sendForm(
            @RequestParam(value="number") String number,
            @RequestParam(value="city") String city,
            @RequestParam(value="person") String person,
            @RequestParam(value="hobby") String hobby,
            @RequestParam(value="livingThing") String livingThing,
            @RequestParam(value="message") String message, HttpSession session) {

        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("hobby", hobby);
        session.setAttribute("livingThing", livingThing);
        session.setAttribute("message", message);

        System.out.println(number);

        return "redirect:/omikuji/show";
    }

    @GetMapping("/omikuji/show")
    public String showFate(Model model, HttpSession session){

        model.addAttribute("number", session.getAttribute("number"));
        model.addAttribute("city", session.getAttribute("city"));
        model.addAttribute("person", session.getAttribute("person"));
        model.addAttribute("hobby", session.getAttribute("hobby"));
        model.addAttribute("livingThing", session.getAttribute("livingThing"));
        model.addAttribute("message", session.getAttribute("message"));

        return "fate.jsp";
    }

}
