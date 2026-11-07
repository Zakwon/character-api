package com.example.character_api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.character_api.model.XmenCharacter;
import com.example.character_api.service.XmenCharacterService;

import jakarta.validation.Valid;

@Controller
public class CharacterUIController {

    private final XmenCharacterService xmenCharacterService;

    public CharacterUIController(XmenCharacterService xmenCharacterService) {
        this.xmenCharacterService = xmenCharacterService;
    }

    @GetMapping("/")
    public String gallery(
            @RequestParam(required = false, defaultValue = "") String name,
            @RequestParam(required = false, defaultValue = "") String alias, Model model) {
        model.addAttribute("characters", xmenCharacterService.searchCharacters(name, alias));
        model.addAttribute("name", name);
        model.addAttribute("alias", alias);
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/characters/{id:\\d+}")
    public String details(@PathVariable long id, Model model) {
        try {
            XmenCharacter character = xmenCharacterService.getCharacterById(id);
            if (character == null) {
                return "error";
            }
            model.addAttribute("character", character);
            return "details";
        } catch (RuntimeException e) {
            return "error";
        }
    }

    @GetMapping("/characters/new")
    public String newForm(Model model) {
        model.addAttribute("character", new XmenCharacter());
        model.addAttribute("formAction", "/characters");
        model.addAttribute("pageTitle", "Add a Character");
        return "character-form";
    }

    @PostMapping("/characters")
    public String create(@Valid @ModelAttribute("character") XmenCharacter character, BindingResult result, Model model, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            model.addAttribute("formAction", "/characters");
            model.addAttribute("pageTitle", "Add a Character");
            model.addAttribute("error", "Name and description are required.");
            return "character-form";
        }
        XmenCharacter saved = xmenCharacterService.addCharacter(character);
        redirectAttributes.addFlashAttribute("message", saved.getName() + " was added.");
        return "redirect:/";
    }

    @GetMapping("/characters/{id:\\d+}/edit")
    public String editForm(@PathVariable long id, Model model) {
        try {
            XmenCharacter character = xmenCharacterService.getCharacterById(id);
            if (character == null) {
                return "error";
            }
            model.addAttribute("character", character);
            model.addAttribute("formAction", "/characters/" + id);
            model.addAttribute("pageTitle", "Edit " + character.getName());
            return "character-form";
        } catch (RuntimeException e) {
            return "error";
        }
    }

    @PostMapping("/characters/{id:\\d+}")
    public String update(@PathVariable long id, @Valid @ModelAttribute("character") XmenCharacter character, BindingResult result, Model model, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            model.addAttribute("formAction", "/characters/" + id);
            model.addAttribute("pageTitle", "Edit Character");
            model.addAttribute("error", "Name and description are required.");
            return "character-form";
        }
        try {
            XmenCharacter updated = xmenCharacterService.updateCharacter(id, character);
            redirectAttributes.addFlashAttribute("message", updated.getName() + " was updated.");
            return "redirect:/characters/" + id;
        } catch (RuntimeException e) {
            return "error";
        }
    }

    @PostMapping("/characters/{id:\\d+}/delete")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
        try {
            XmenCharacter character = xmenCharacterService.getCharacterById(id);
            if (character == null) {
                return "error";
            }
            String name = character.getName();
            xmenCharacterService.deleteCharacter(id);
            redirectAttributes.addFlashAttribute("message", name + " was removed.");
            return "redirect:/";
        } catch (RuntimeException e) {
            return "error";
        }
    }
}