<#import "layout.ftlh" as layout>
<@layout.page title=pageTitle>
    <h1>${pageTitle}</h1>
    <#if error??>
        <p class="error">${error}</p>
    </#if>

    <form class="character-form" method="post" action="${formAction}">
        <label>Name
            <input type="text" name="name" value="${(character.name)!''}" required>
        </label>
        <label>Alias
            <input type="text" name="alias" value="${(character.alias)!''}">
        </label>
        <label>Powers
            <input type="text" name="powers" value="${(character.powers)!''}">
        </label>
        <label>Description
            <textarea name="description" required>${(character.description)!''}</textarea>
        </label>
        <label>Image paths (4, separated by commas)
            <input type="text" name="imageUrls" value="${(character.imageUrls)!''}" placeholder="/images/storm1.png,/images/storm2.png,/images/storm3.png,/images/storm4.png">
        </label>
        <button type="submit">Save</button>
    </form>
</@layout.page>