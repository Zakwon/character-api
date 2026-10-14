package com.example.character_api.repository;

import com.example.character_api.model.XmenCharacter;
import org.springframework.data.jpa.repository.XmenCharacterRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

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