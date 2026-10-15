package com.example.character_api.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.character_api.model.XmenCharacter;

public interface XmenCharacterRepository extends JpaRepository<XmenCharacter, Long> {

    List<XmenCharacter> findByAliasIgnoreCase(String alias);

    List<XmenCharacter> findByNameContainingIgnoreCase(String name);
}