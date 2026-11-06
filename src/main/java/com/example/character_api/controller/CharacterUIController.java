package com.example.character_api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.character_api.model.XmenCharacter;
import com.example.character_api.service.XmenCharacterService;

@ Controller 
    public class CharacterUIController {

        private final XmenCharacterService xmenCharacterService;

        public CharacterUIController(XmenCharacterService xmenCharacterService) {
            this.xmenCharacterService = xmenCharacterService;
        }

        @GetMapping("/")
        public String gallery(Model model) {
            model.addAttribute("characters", xmenCharacterService.getAllCharacters());
            return "index";
        }

        @GetMapping("/about")
        public String about() {
            return "about";
        }

        @GetMapping("/characters/{id}")
        public String details(@PathVariable long id, Model model) {
            XmenCharacter character = xmenCharacterService.getCharacterById(id);
            model.addAttribute("character", character);
            return "details";
        }
    }


