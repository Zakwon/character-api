# X-Men Character API

A RESTful CRUD API for X-Men characters, built with Spring Boot, Spring Data JPA, and PostgreSQL (Neon). It uses the same characters as my Assignment 2 website. Deployed on Render with Docker.

## Live API

https://xmen-character-api.onrender.com/api/characters

**Note:** This runs on Render's free tier, which sleeps when idle. The first request can take up to a minute to respond.

## Entity: XmenCharacter

| Attribute | Type | Rules |
|---|---|---|
| characterId | long | Unique, auto-generated |
| name | String | Required (not null, not blank) |
| description | String | Required (not null, not blank) |
| alias | String | Optional |
| powers | String | Optional |

## Endpoints

| Method | Path | Description | Success Status |
|---|---|---|---|
| GET | /api/characters | Get all characters | 200 |
| GET | /api/characters/{id} | Get one character by ID | 200 |
| POST | /api/characters | Add a character | 201 |
| PUT | /api/characters/{id} | Update a character | 200 |
| DELETE | /api/characters/{id} | Delete a character | 204 |
| GET | /api/characters?alias=scott | Filter by alias (case-insensitive) | 200 |
| GET | /api/characters?name=cycl | Search by name (partial, case-insensitive) | 200 |

**Errors:** a non-existent ID returns 404. A POST or PUT with a missing name or description returns 400.

### Example request body (POST and PUT)

```json
{
  "name": "Bobby Drake",
  "description": "Mutant with ice powers",
  "alias": "Iceman",
  "powers": "Create and manipulate ice"
}
```
