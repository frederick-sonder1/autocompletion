<?php require 'header.php' ?>
        <h1>Recherche</h1>
        <h2>ton fruit ou légume</h2>
        <div class="imghome">
            <img src="images/panier.jfif" alt="image fruits-et-legumes" >
        </div>
        <div class="wrapper">
            <div class="search-input">
                <form action="recherche.php?search=" method="GET" class="search-input">
                    <input type="texte" id="search" name = "search" placeholder="tapez pour rechercher">
                    <button type="submit" value="submit">rechercher</button>
                </form>
                <div class="autocom-box"></div>
                <div class="autocom-box2"></div>
            </div>
        </div>
    </main>    
</body>
</html>