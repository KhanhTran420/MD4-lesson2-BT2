package com.codegym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CalculatorController {

    @GetMapping("")
    public String home() {
        return "index";
    }

    @PostMapping("/result")
    public String calculator(@RequestParam Integer firstNumber, @RequestParam Integer secondNumber, @RequestParam String operator, Model model) {
        int result = 0;
        switch (operator) {
            case "addition":
                result = firstNumber + secondNumber;
                break;
            case "subtraction":
                result = firstNumber - secondNumber;
                break;
            case "multiplication":
                result = firstNumber * secondNumber;
                break;
            case "division":
                result = firstNumber / secondNumber;
                break;
        }
        model.addAttribute("result", result);
//        model.addAttribute("Result", operator);
        return "index";
    }
}

