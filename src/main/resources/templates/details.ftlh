<#import "layout.ftlh" as layout>
<@layout.page title=character.name>

    <h1>${character.name}</h1>
    <div class="details-container">
        <div class="image-row">
            <#assign images = ((character.imageUrls)!'')?split(',')?filter(x -> x?trim?has_content)>
            <#list images as img>
                <img src="${img?trim}" alt="${character.name} picture ${img?index + 1}">
            </#list>
        </div>

        <p><strong>Alias:</strong> ${character.alias!''}</p>
        <p><strong>Powers:</strong> ${character.powers!''}</p>
        <p>${character.description}</p>

        <div class="actions">
            <a class="btn" href="/">Back to gallery</a>
            <a class="btn" href="/characters/${character.characterId?c}/edit">Edit</a>
            <form method="post" action="/characters/${character.characterId?c}/delete"
                  onsubmit="return confirm('Delete this character?');">
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
        </div>
    </div>

</@layout.page>