<?php 
    require 'headerR.php';
    require 'db.php';
    $produit = new Database;
    $produit = detail_product();
?>
        
    <h1>Détail produit</h1>
    <div class="container">
        <div class="image">
            <img src="images/<?php echo $produit['image']; ?>" alt="image <?= $produit['nom'];?>">
        </div>
        <div>
            <h2>
                <?php 
                    echo $produit['nom']; 
                ?>
            </h2>
        </div>
        <div class="description">
            <h3>description</h3>
            <p>
                <?php echo $produit['description']; ?>
            </p>
        </div>
        <a href="index.php">Retour</a>
    </div>
</main>
</body>

</html>