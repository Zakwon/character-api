package com.example.character_api.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "characters")
public class XmenCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId;

    @NotBlank(message = "name is required")
    private String name;

    @NotBlank(message = "description is required")
    private String description;

    private String alias;
    private String powers;

    public XmenCharacter() {}

    public long getCharacterId() { return characterId; }
    public void setCharacterId(long characterId) { this.characterId = characterId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getAlias() { return alias; }
    public void setAlias(String alias) { this.alias = alias; }

    public String getPowers() { return powers; }
    public void setPowers(String powers) { this.powers = powers; }
}