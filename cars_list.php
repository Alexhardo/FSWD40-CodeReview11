<?php
        include_once 'dbconnect.php';
        header("Content-Type: application/json; charset=UTF-8");

        $obj = json_decode($_GET["CarList"], false); // Convert the request into an object

        $result = $conn->query(" SELECT tbl_cars.car_id , tbl_office.office_id, tbl_cars.brand,tbl_cars.model,tbl_cars.price, tbl_office.office_name,tbl_office.address from tbl_office, tbl_cars WHERE tbl_cars.fk_office_id=tbl_office.office_id    ");

        $outp = array(); // create an empty array
        $outp = $result->fetch_all(MYSQLI_ASSOC); // fill an array with the requested data and store it in the array
        echo "<table class='table table-striped'><thead><tr><th>Brand</th><th>Model</th><th>price per day</th><th>Location Name</th><th>address</th></tr></thead>";
        foreach($outp as $row){
                echo "<tr><td>";
                echo $row['brand'];
                echo "</td><td>";
                echo $row['model'];
                echo "</td><td>";
                echo $row['price'] . " ". "€";
                echo "</td><td>";
                echo $row['office_name'];
                echo "</td><td>";
                echo $row['address'];         
                echo "</td></tr>";

            }
            echo "</table>";


        //echo json_encode($outp); // return the object as JSON


?>
