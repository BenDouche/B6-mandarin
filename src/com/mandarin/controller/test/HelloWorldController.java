package com.mandarin.controller.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class HelloWorldController {

    @RequestMapping("/hello")
    public String hello(){
        return "test/hello";
    }
}
