<#import "layout.ftlh" as layout>
    <@layout.page title=character.name>
        <h1>${character.name}</h1>
        <div class="details-container">

            <!-- PUT IT HERE - inside image-row, this is the part you are replacing -->
            <div class="image-row">
                <#assign images=((character.imageUrls)!'')?split(',')?filter(x -> x?trim?has_content)>
                    <#if images?has_content>
                        <#if images?size==5>
                            <#-- 5 images=first one is the cover, so skip it and show only the other 4 -->
                                <#list images as img>
                                    <#if img?index !=0>
                                        <img src="${img?trim}" alt="${character.name} picture ${img?index}">
                                    </#if>
                                </#list>
                                <#else>

                                    <#list images as img>
                                        <img src="${img?trim}" alt="${character.name} picture ${img?index + 1}">
                                    </#list>
                        </#if>
                        <#else>
                            <img src="/images/placeholder.svg" alt="No image for ${character.name}">
                    </#if>
            </div>

            <p><strong>Alias:</strong> ${character.alias!''}</p>
            <p><strong>Powers:</strong> ${character.powers!''}</p>
            <p>${character.description}</p>

            <div class="actions">
                <a class="btn" href="/">Back to gallery</a>
                <a class="btn" href="/characters/${character.characterId?c}/edit">Edit</a>
                <form method="post" action="/characters/${character.characterId?c}/delete"
                    onsubmit="return confirm('Delete ${character.name}? This cannot be undone.');">
                    <button class="btn btn-danger" type="submit">Delete</button>
                </form>
            </div>

        </div>
    </@layout.page>