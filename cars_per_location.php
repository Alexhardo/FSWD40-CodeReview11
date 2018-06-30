<?php
		include_once 'dbconnect.php';
        header("Content-Type: application/json; charset=UTF-8");

        $obj = json_decode($_GET["location"], false); // Convert the request into an object
        $result = $conn->query("SELECT office_name,COUNT(car_id) as 'noc' FROM tbl_office , tbl_cars where tbl_cars.fk_office_id=tbl_office.office_id GROUP BY office_name;");

        $outp = array(); // create an empty array
        $outp = $result->fetch_all(MYSQLI_ASSOC); // fill an array with the requested data and store it in the array


          echo "<table class='table table-striped'><thead><tr><th>Location</th><th>Car per location</th></tr></thead>";
        foreach($outp as $row){
                echo "<tr><td>";
                echo $row['office_name'];
                echo "</td><td>";
                echo $row['noc']. " ". "cars";                        
                echo "</td></tr>";

            }
            echo "</table>";


?>
