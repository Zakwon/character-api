


<#macro page title active="">
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${title} | X-Men Characters</title>
        <link rel="stylesheet" href="/static/css/styles.css">
    </head>

    <body>
        <header class="site-header">
            <nav class="navbar">
                <a href="/index" class="${active == 'home'?then('active', '')}">Home</a>
                <a href="/details" class="${active == 'details'?then('active', '')}">Details</a>
                <a href="/about" class="${active == 'about'?then('active', '')}">About</a>
                <a href="/new-character-form" class="${active == 'new-character-form'?then('active', '')}">Add a Character</a>
            </nav>
        </header>

        <main class="container">
            <#if message??>
                <p class="alert"> ${message}</p>
            </#if>
            <#nested>
        </main>

        <footer class="site-footer"> 
            <p>&copy; 2024 X-Men Characters. All rights reserved.</p>
        </footer>
    </body>

    </html>
</#macro>