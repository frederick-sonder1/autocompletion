<?php
class Database{   

    public function __construct(){
        
        $host = "localhost";
        $db_name = "autocompletion";
        $username = "root";
        $password = "";
        $conn = null;
    
        try
            {
                $conn = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
            }
            catch(PDOException $exception)
            {
                echo "Connection error: " . $exception->getMessage();
            }
        }
    }
  
    
    function detail_product(){
        $host = "localhost";
        $db_name = "autocompletion";
        $username = "root";
        $password = "";
        $conn = null;
        $request = "SELECT * FROM fruits_et_legumes WHERE id = :id";
        $conn = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $stmt = $conn->prepare($request);
        $stmt->execute([
            ':id' => $_GET['id']
        ]);
        $product = $stmt->fetch();
        return $product;
    }

    function getlist(){
        $host = "localhost";
        $db_name = "autocompletion";
        $username = "root";
        $password = "";
        $conn = null;
        $conn = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        if (isset($_GET['search'])){   
            
            $sql = "SELECT * FROM fruits_et_legumes WHERE nom LIKE :term  ";
            $stmt = $conn->prepare($sql);
            $stmt->execute([
                ':term' => $_GET['search'] . '%'
            ]);
            $suggestion = $stmt->fetchAll();
            foreach($suggestion as $produit){
                    echo '<li class="listsearch"><a href="element.php?id='.$produit['id'].'">'.$produit['nom'].'</a></li>';
            }
        }
   
        else{
            echo 'Aucun fruit ou légume ne correspond a votre recheche';
        }
    }
  
?>