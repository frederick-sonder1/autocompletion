<?php
    require 'headerR.php';
    require 'Db.php';  
            
    $produit = new Database;
?> 
<h2>RESULTAT DE RECHERCHE</h2>
   <ul id="listsearch">
       <?php $produit = getlist(); ?>
   </ul> 
    </main>    
</body>
</html>