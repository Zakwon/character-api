<#macro page title="THE X-MEN">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <nav class="navbar">
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/characters/new">Add a Character</a>
    </nav>

    <#if message?? && message?has_content>
        <p class="flash">${message}</p>
    </#if>

    <#nested>
</body>
</html>
</#macro>