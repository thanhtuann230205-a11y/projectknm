package com.example.nhom12;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/noidung")
    public String noidung() {
        return "noidung";
    }

    @GetMapping("/video")
    public String video() {
        return "video";
    }
}