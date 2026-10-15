package com.example.character_api.service;

import com.example.character_api.model.XmenCharacter;
import com.example.character_api.repository.XmenCharacterRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

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

    public XmenCharacter addCharacter(XmenCharacter character) {
        return xmenCharacterRepository.save(character);
    }

    public XmenCharacter updateCharacter(long id, XmenCharacter updatedCharacter) {
        XmenCharacter existingCharacter = xmenCharacterRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(
                        HttpStatus.NOT_FOUND, "Character not found"));

        existingCharacter.setName(updatedCharacter.getName());
        existingCharacter.setDescription(updatedCharacter.getDescription());
        existingCharacter.setAlias(updatedCharacter.getAlias());
        existingCharacter.setPowers(updatedCharacter.getPowers());

        return xmenCharacterRepository.save(existingCharacter);
    }

    public void deleteCharacter(long id) {
        XmenCharacter existingCharacter = getCharacterById(id);
        xmenCharacterRepository.delete(existingCharacter);
    }
}

