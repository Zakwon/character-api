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
        <input type="text" placeholder="Search by name or category...">
    </div>

    <div class="card-container">
        <div class="card">
            <img src="https://tse2.mm.bing.net/th/id/OIP.ahikl4f7RTpibM0Uf9bkewHaLc?r=0&rs=1&pid=ImgDetMain&o=7&rm=3"
                alt="Card Image">
            <div class="card-content">
                <h3>Wolverine</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Member</p>
                <p>Power level: Beta</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>

        <div class="card">
            <img src="https://i.pinimg.com/originals/56/ac/5d/56ac5dcb0806f9d1bbe60708aaa4d80b.jpg" alt="Card Image">
            <div class="card-content">
                <h3>Nightcrawler</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Member</p>
                <p>Power level: Gamma</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>

        <div class="card">
            <img src="https://i.pinimg.com/736x/2a/db/c2/2adbc2c89c97f8e17dc76e0b4a39bc3f.jpg" alt="Card Image">
            <div class="card-content">
                <h3>Storm</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Member</p>
                <p>Power level: Omega</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>

        <div class="card">
            <img src="https://i.pinimg.com/originals/20/27/be/2027be22b0a3775ac706b2dcf005c87f.jpg" alt="Card Image">
            <div class="card-content">
                <h3>Cyclops</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Leader</p>
                <p>Power level: Alpha</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>

        <div class="card">
            <img src="https://th.bing.com/th/id/R.a9f20d5e37c09958d0460ceb7301ec0c?rik=oUE782ik21ViDQ&pid=ImgRaw&r=0"
                alt="Card Image">
            <div class="card-content">
                <h3>Iceman</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Member</p>
                <p>Power level: Omega</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>

        <div class="card">
            <img src="https://i.pinimg.com/originals/7d/4d/8a/7d4d8a9f1d389ccdbdcc5b9f1984f944.jpg" alt="Card Image">
            <div class="card-content">
                <h3>Jean Grey</h3>
                <p>Universe: Marvel</p>
                <p>Role: X-Men Member</p>
                <p>Power level: Omega</p>
                <p>Species: Mutant</p>
                <a href="details.html">Read More</a>
            </div>
        </div>
    </div>

</body>

</html>