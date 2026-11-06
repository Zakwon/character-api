<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Static Web App</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h1 {
            margin-bottom: 20px;
            text-align: center;
        }

        /* Search bar */
        .search-bar {
            max-width: 1000px;
            margin: 0 auto 20px auto;
        }

        .search-bar input {
            width: 100%;
            padding: 10px 15px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        /* Card container for layout */
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
            max-width: 1000px;
            /* keeps it to about 3 columns max, even on wide screens */
            margin: 0 auto;
        }

        /* Card styling */
        .card {
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Card image */
        .card img {
            width: 100%;
            height: 450px;
            object-fit: cover;
            display: block;
        }

        /* Card content */
        .card-content {
            padding: 15px;
        }

        .card-content h3 {
            margin-bottom: 10px;
            font-size: 1.2rem;
            color: #333;
        }

        .card-content p {
            font-size: 0.95rem;
            color: #555;
            margin-bottom: 15px;
        }

        /* Button styling */
        .card-content a {
            display: inline-block;
            padding: 8px 15px;
            background: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background 0.3s ease;
        }

        .card-content a:hover {
            background: #0056b3;
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
        <a href="index.html">Home</a>
        <a href="about.html">About</a>
        <a href="details.html">Details</a>
        <a href="new-character-form.html">Add a Character</a>
    </nav>

    <h1>THE X-MEN</h1>

    <div class="search-bar">
        <form class="search-bar" method="get" action="/">
            <input type="text" name="name" placeholder="Search by name..." value="${name!''}">
            <input type="text" name="alias" placeholder="Filter by alias..." value="${alias!''}">
            <button type="submit">Search</button>
            <a href="/">Clear</a>
        </form>
    </div>

    <div class="card-container">
        <#list characters as c>
            <div class="card">
                <#assign first=(((c.imageUrls)!'')?split(',')?filter(x ->
                    x?trim?has_content)?first)!'/images/placeholder.svg'>
                    <img src="${first?trim}" alt="${c.name}">
                    <div class="card-content">
                        <h3>${c.name}</h3>
                        <p>Alias: ${c.alias!''}</p>
                        <p>Powers: ${c.powers!''}</p>
                        <a href="/characters/${c.characterId?c}">Read More</a>
                    </div>
            </div>
            <#else>
                <p>No characters found.</p>
        </#list>
    </div>

</body>

</html>