<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>recherche fruits et legumes</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="script.js"></script>   
</head>
<body>
    <header>
        <a href="index.php">Retour</a>
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
    </header>
    <main>