package com.codingdojo.OmikujiForm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
            @RequestParam(value="message") String message, Model model) {

        model.addAttribute(number);
        model.addAttribute(city);
        model.addAttribute(person);
        model.addAttribute(hobby);
        model.addAttribute(livingThing);
        model.addAttribute(message);

        return "redirect:/omikuji/show";
    }

    @GetMapping("/omikuji/show")
    public String showFate(){
        return "fate.jsp";
    }




}
