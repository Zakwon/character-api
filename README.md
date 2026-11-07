# Character API

A Spring Boot app for browsing, searching, adding, editing, and deleting 【entity-X-Men¦canonical_name=X-Men】 characters.

Two front ends share one back end:
- **FreeMarker pages** for humans — gallery, details, add / edit forms, about, and a friendly error page
- **REST API** that returns the same data as JSON

**Live app:** https://xmen-character-api.onrender.com/
**Live API:** https://xmen-character-api.onrender.com/api/characters

> Note: This is on Render's free tier, so the first visit can take about 1 minute to wake up. Just wait and refresh once if it looks like it is loading.

## Pages (FreeMarker UI)

| Page | URL | What it does |
| --- | --- | --- |
| Gallery | `/` | Shows all characters as cards. Search by name, filter by alias. Click a card for details. |
| Details | `/characters/{id}` | Shows name, alias, powers, description, and all images. Has Edit and Delete. |
| Add a Character | `/characters/new` | Form to add a new character. Name and description are required. |
| Edit Character | `/characters/{id}/edit` | Same form as Add, but pre-filled with the existing character. |
| About | `/about` | Why I chose X-Men |
| Not Found | `/characters/99999` | Friendly error page instead of a stack trace when an ID does not exist. |

After a successful add, edit, or delete, the app uses Post / Redirect / Get and shows a one-time flash message, for example:
- `Storm was added.`
- `Storm was updated.`
- `Storm was removed.`

Refreshing the page does not submit the form twice.

## REST API

Base URL: `https://xmen-character-api.onrender.com/api/characters`

| Method | Endpoint | What it does |
| --- | --- | --- |
| GET | `/api/characters` | Get all characters |
| GET | `/api/characters/{id}` | Get one character by ID |
| GET | `/api/characters/search?name=Storm&alias=` | Search by name and / or alias |
| POST | `/api/characters` | Add a new character (JSON body) |
| PUT | `/api/characters/{id}` | Update a character by ID |
| DELETE | `/api/characters/{id}` | Delete a character by ID |

Example — get all characters:
```bash
 https://xmen-character-api.onrender.com/api/characters
