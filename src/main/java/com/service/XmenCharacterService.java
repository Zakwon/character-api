package com.example.character_api.repository;

import com.example.character_api.model.XmenCharacter;
import com.example.character_api.repository.XmenCharacterRepository;
import org.springframework.stereotype.Service;
import org.springframework.http.HttpStatus;
import org,springframework.web.server.ResponseStatusException;

import java.util.List;

@Service 
public class XmenCharacterService {

    private final XmenCharacterRepository xmenCharacterRepository;

    public XmenCharacterService(XmenCharacterRepository xmenCharacterRepository) {
        this.xmenCharacterRepository = xmenCharacterRepository;
    }

    public List<XmenCharacter> getAllCharacters() {
        return xmenCharacterRepository.findAll();
    }

    public XmenCharacter getCharacterById(long id) {
        return xmenCharacterRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.NOT_FOUND, "Character not found"));
    }