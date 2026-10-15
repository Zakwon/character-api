package com.example.character_api.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.example.character_api.model.XmenCharacter;
import com.example.character_api.service.XmenCharacterService;

import jakarta.validation.Valid;

@RestController 
@RequestMapping("/api/xmen-characters")
public class XmenCharacterController {

    private final XmenCharacterService xmenCharacterService;

    public XmenCharacterController(XmenCharacterService xmenCharacterService) {
        this.xmenCharacterService = xmenCharacterService;
    }

    @GetMapping
    public List<XmenCharacter> getAllCharacters() {
        return xmenCharacterService.getAllCharacters();
    }

    @GetMapping("/{id}")
    public XmenCharacter getCharacterById(@PathVariable long id) {
        return xmenCharacterService.getCharacterById(id);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public XmenCharacter addCharacter(@Valid @RequestBody XmenCharacter character) {
        return xmenCharacterService.addCharacter(character);
    }

    @PutMapping("/{id}")
    public XmenCharacter updateCharacter(@PathVariable long id, @Valid @RequestBody XmenCharacter updatedCharacter) {
        return xmenCharacterService.updateCharacter(id, updatedCharacter);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCharacter(@PathVariable long id) {
        xmenCharacterService.deleteCharacter(id);
    }
}