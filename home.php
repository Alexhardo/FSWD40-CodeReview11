<?php
ob_start();
session_start();
require_once 'dbconnect.php';

// if session is not set this will redirect to login page
if( !isset($_SESSION['user']) ) {
 header("Location: index.php");
 exit;
}
// select logged-in users detail
$res=mysqli_query($conn, "SELECT * FROM users WHERE userId=".$_SESSION['user']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);



?>

<!DOCTYPE html>
<html>
<head>
   
<title>Welcome - <?php echo $userRow['userEmail']; ?></title>


<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>   
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").toggle();
    });
});
</script>


</head>
<body>    

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">

<a class="navbar-brand"  href="logout.php?logout">Sign Out <b>  <?php echo  $userRow['username']; ?> </b> </a>
</div>
</div>
</nav>

<div class="container">
           <!-- <h1>PHP car rental agency</h1> -->

      <div class="tab-content">
        <div id="home" class="tab-pane fade in active">

        </div>
      </div>
    </div>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2" onclick="getoffices()">Office List</button>

<!-- <p id="demo"></p> -->

 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2" onclick="getcar()">car List</button>

<!-- <p id="demo2"></p> -->

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" onclick="carlocation()">Report car per location </button>


<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1" onclick="cargrid()">cars view </button>

<br><br>

<br>

<br>


     <div class="container-fluid">
      <div class=" col-md-5">
        <p id="demo"></p>

      </div>

     </div>

<script>

  function getoffices(){
        var obj, dbParam, xmlhttp;
        obj = {}; 
        dbParam = JSON.stringify(obj); 
        xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("demo").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "office_list.php?office=" + dbParam, true); 
        xmlhttp.send(); 
        }

        function getcar(){
        var obj, dbParam, xmlhttp;
        obj = {}; 
        dbParam = JSON.stringify(obj); 
        xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("demo").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "cars_list.php?CarList=" + dbParam, true); 
        xmlhttp.send(); 
        }


        function carlocation(){
          var obj, dbParam, xmlhttp;
          obj = {}; 
          dbParam = JSON.stringify(obj); 
          xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                  document.getElementById("demo").innerHTML = this.responseText;
              }
          };
          xmlhttp.open("GET", "cars_per_location.php?location=" + dbParam, true); 
          xmlhttp.send();
          }




          function cargrid(){
          var obj, dbParam, xmlhttp;
          obj = {}; 
          dbParam = JSON.stringify(obj); 
          xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                  document.getElementById("demo").innerHTML = this.responseText;
              }
          };
          xmlhttp.open("GET", "cars_grid.php?cargrid=" + dbParam, true); 
          xmlhttp.send();
          }


        

</script>

</body>
</html>

<?php ob_end_flush(); ?>
