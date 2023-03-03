package com.codingdojo.OmikujiForm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OmikujiController {
    @GetMapping("/omikuji")
    public String showForm(){
        return "form.jsp";
    }
}
