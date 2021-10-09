<!DOCTYPE html>
<html>
<head>
  <title>Exchange product history</title>
  <meta charset="UTF-8">
  
  <!-- Font awesome  -->
  <link rel="stylesheet" href="css/fontawesome.css">
  <!-- Owl Carousel -->
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <!-- Main css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- Responsive css -->
  <link rel="stylesheet" href="css/responsive.css">
  <link rel="stylesheet" href="css/semantic.min.css">
   <?php require_once('db_config.php'); ?>
  
</head>

<body>
<header class="header fixed-top">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light">
      <!-- Brand -->
       <a class="navbar-brand" href="#"></span>Exchange Now</a>

      <!-- Toggler/collapsibe Button -->
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
       </button>

      <!-- Navbar links -->
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
         <li class="nav-item">
           <a class="nav-link active" href="index.php"> Home</a>
         </li>
          <li class="nav-item">
           <a class="nav-link active" href="exchange.php"> Exchange </a>
         </li>
         <!--<li class="nav-item">
           <a class="nav-link active" href="buynow.php"> Buy Now</a>
         </li>-->
         <li class="nav-item">
           <a class="nav-link active" href="login.php"> Login</a>
         </li>   
       </ul>
      </div>
    </nav>

  </div>
</header>
<br>
<br>
<br><br>
<br><br>
</body>

<body>
  <div class="ui text container" style ="text-align: center; background-color: #1eaef4; padding: 1% ">
    <h1> All Product for Exchange</h1>
    <h4> We can't compromise with quality</h4>
   <!--  <div>
  <button class="ui white huge button" onclick=toggle_searchbar()> Search </button>
    </div> -->
    </div> 

    <br><br>

 <!-- <div id="searchbar" style="display: none; text-align: left;">
    <form class="ui form" method="get" action="intact_casing_searchresult.php">
      <div class="field">
        <label>Product Type</label>
        <input type="text" name="keyword" placeholder="Partial Casing Brand Name">
      </div>
      <button class="ui right button" type="submit">Submit</button>
    </form>
  </div>

</div>
<br><br><br> -->

<?php
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_errno) {
          printf("Connect failed: %s\n", $conn->connect_error);
        exit();
    }

    $query = "SELECT * FROM `exchange_history` ";
    
    if ($result = $conn->query($query)) {
      printf('<div class="ui text container">');
      printf('<table class="ui unstackable table">');
      printf("<thead> <tr> <th>Index</th> <th>Clinets Name</th> <th>Clients Email</th> <th>Product Type</th> <th>Product Specification</th> <th>PickUp Address</th> <th>Contact Number</th>  
       <th></th> </tr> </thead>");

      $index = 1;
        /* fetch associative array */
        while ($row = $result->fetch_assoc()) {
            printf ('<tr> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td></td> 
              </tr>', $index, $row["Client_Name"], $row["Email"], $row["Product_TYPE"], $row["Product_Descrption"], $row["Pick_UP_ADDRESS"], $row["Contact_Number"]
              );

            $index++;
        }

        printf("</table>");
        printf("%d record(s) found!<br>", $result->num_rows);
      printf('</div>');

        $result->free(); //free result set
    }
    else
    {
      printf("No record found!");
    }
    
    $conn->close();

    echo "<a href='../index.php'>Back</a>";
  ?>


         <!-- Jquery -->
<script src="../js/jquery.min.js"></script>
<!-- Popper -->
<script src="../js/popper.min.js"></script>
 <!-- Bootstrap -->
<script src="../js/bootstrap.min.js"></script>
<!-- Owl Carousel -->
<script src="../js/owl.carousel.min.js"></script>
<!-- main -->
<script src="../js/main.js"></script>
 <script src="../js/semantic.min.js"></script>
  <!-- <script src="../js/jquery-3.4.1.min.js"></script>
   <script type="text/javascript">
    function toggle_searchbar()
    {
      $('#searchbar').toggle();
    }
  </script> -->


</body>
</html>