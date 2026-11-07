<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Character Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("https://cdn.freelogovectors.net/wp-content/uploads/2023/10/x-men-logo-06-freelogovectors.net_.png");
            background-size: 50%;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 20px;
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
    </style>

</head>

<body>
    <nav class="navbar">
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/characters/new">Add a Character</a>
    </nav>
    <h1>${pageTitle}</h1>
    <#if error??>
        <p class="error" style="color: red;">${error}</p>
    </#if>

    <form method="post" action="${formAction}">
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
            <input type="text" name="imageUrls" value="${(character.imageUrls)!''}"
                placeholder="/images/storm1.png,/images/storm2.png,/images/storm3.png,/images/storm4.png">
        </label>
        <button type="submit">Save</button>
    </form>
</body>

</html>