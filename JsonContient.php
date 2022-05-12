<?php
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
            echo "" . $exception->getMessage();
        }

    $search = $_POST['search'];
    
    $sql = "SELECT * FROM fruits_et_legumes WHERE nom LIKE :term ";
    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':term' => '%' . $search . '%'
    ]);
    $suggestion = $stmt->fetchAll();
    
    echo json_encode($suggestion);


?>