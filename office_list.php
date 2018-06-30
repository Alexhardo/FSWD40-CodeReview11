<?php
		include_once 'dbconnect.php';
        header("Content-Type: application/json; charset=UTF-8");

        $obj = json_decode($_GET["office"], false); // Convert the request into an object

        $result = $conn->query("SELECT office_name,address,zip FROM tbl_office");

        $outp = array(); // create an empty array
        $outp = $result->fetch_all(MYSQLI_ASSOC); // fill an array with the requested data and store it in the array
        echo "<table class='table table-striped'><thead><tr><th>Office Name</th><th>Address</th><th>ZIP Code</th></tr></thead>";
        foreach($outp as $row){
              	echo "<tr><td>";
                echo $row['office_name'];
                echo "</td><td>";
                echo $row['address'];
                echo "</td><td>";
                 echo $row['zip'];
                echo "</td></tr>";         
 }
            echo "</table>";
        //echo json_encode($outp); // return the object as JSON


?>
