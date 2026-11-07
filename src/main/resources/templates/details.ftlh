<!DOCTYPE html>
<html Lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${character.name}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
        }

        h2 {
            margin-bottom: 10px;
            text-align: center;
        }

        .details-container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .details-container h2 {
            margin-bottom: 10px;
        }

        .details-container p {
            line-height: 1.6;
        }

        .image-row {
            display: flex;
            gap: 10px;
            margin-bottom: 20px;
        }

        .image-row img {
            width: 24%;
            border-radius: 8px;
        }

        .navbar {
            background: #333;
            padding: 15px;
            text-align: center;
            margin-bottom: 20px;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1rem;
        }

        .navbar a:hover {
            color: #007BFF;
        }

        .edit-link {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 15px;
            background: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background 0.3s ease;
        }

        .edit-link:hover {
            background: #0056b3;
        }

        deltete-button {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 15px;
            background: #dc3545;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background 0.3s ease;
        }

        .delete-button:hover {
            background: #c82333;
        }
    </style>
</head>

<body>
    <nav class="navbar">
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/characters/new">Add a Character</a>
    </nav>

    <#if message??>
        <p style="max-width:800px;margin:0 auto 15px;padding:10px;background:#d4edda;border-radius:6px;">${message}</p>
    </#if>
    <h1>${character.name}</h1>
    <div class="details-container">
        <div class="image-row">
            <#assign images=((character.imageUrls)!'')?split(',')?filter(x -> x?trim?has_content)>
                <#if images?has_content>
                    <#list images as img>
                        <img src="${img?trim}" alt="${character.name} picture ${img?index + 1}">
                    </#list>
                    <#else>
                        <img src="/images/placeholder.svg" alt="No image for ${character.name}">
                </#if>
        </div>
        <p><strong>Alias:</strong> ${character.alias!''}</p>
        <p><strong>Powers:</strong> ${character.powers!''}</p>
        <p>${character.description}</p>
        <p><a class="edit-link" href="/characters/${character.characterId?c}/edit">Edit</a></p>
        <form method="post" action="/characters/${character.characterId?c}/delete"
            onsubmit="return confirm('Delete ${character.name}? This cannot be undone.');">
            <button class="delete-btn" type="submit">Delete</button>
        </form>
        <p style="margin-top:15px;"><button onclick="window.location.href='/'">Main Page</button></p>
    </div>
</body>

</html>