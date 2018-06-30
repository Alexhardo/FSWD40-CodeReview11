

<?php
        include_once 'dbconnect.php';
        header("Content-Type: application/json; charset=UTF-8");

        $obj = json_decode($_GET["carsgrid"], false); // Convert the request into an object
        $result = $conn->query("SELECT img,brand,model,price FROM `tbl_cars`;");

        $outp = array(); // create an empty array
        $outp = $result->fetch_all(MYSQLI_ASSOC); // fill an array with the requested data and store it in the array


        foreach($outp as $row){



        echo "<div class='card cars_card'>";
        echo "  <div><img class='img card-img-top' src='" . $row['img'] . "' width='400px' height='350px' alt='cars'></div>";
        echo "  <div class='card-body'>";
        echo "    <p class='card-text'>"."Car brand:" .$row['brand']. "</p>";        
        echo "  <div class='ul'>";
        echo "<ul class='list-group list-group-flush'>";
        echo "<li class='list-group-item'>"."Car model: " . $row['model'] . "</li>";
        echo "<li class='list-group-item'>"."Price per day " . $row['price']. " euro". "</li>";                   
        echo "</ul>";
        echo "  </div>";
        echo "  </div>";
        echo "</div>";
            }
     


?>