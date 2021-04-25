<?php
$mysqlserverhost = "Localhost";
$database_name = "library";
$username_mysql = "root";
$password_mysql = "password";

function sanitize($variable){
	$clean_variable = strip_tags($variable);
	$clean_variable = htmlentities($clean_variable, ENT_QUOTES, 'UTF-8');
	return $clean_variable;
}

function connect_to_mysqli($mysqlserverhost, $username_mysql, $password_mysql, $database_name){
	$connect = mysqli_connect($mysqlserverhost, $username_mysql, $password_mysql, $database_name);
	if (!$connect) {
		  die("Connection failed mysql: " . mysqli_connect_error());
	}
	return $connect;	
}

if(isset($_POST["processform"])){
	$connection = connect_to_mysqli($mysqlserverhost, $username_mysql, $password_mysql, $database_name);
	$firstfield = mysqli_real_escape_string($connection, sanitize($_POST["firstfield"]));
	$secondfield = mysqli_real_escape_string($connection, sanitize($_POST["secondfield"]));
	$thirdfield = mysqli_real_escape_string($connection, sanitize($_POST["thirdfield"]));
	$sql = "INSERT INTO record(Title, Date_of_Return) VALUES ('$firstfield', '$thirdfield')";
	if (mysqli_query($connection, $sql)) {
		  echo "<h2><font color=blue>New record added to database.</font></h2>";
	} else {
		  echo "Error: " . $sql . "<br>" . mysqli_error($connection);
	}
	mysqli_close($connection);
}

?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

input[type=submit] {
  background-color: #424ef5;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  width: 50%;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 20%;
  margin-top: 6px;
  text-align: right;
}

.col-75 {
  float: left;
  width: 80%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<script type="text/javascript">
  function validateForm() {
    var a = document.forms["Form"]["firstfield"].value;
    if (a == null || a == "", b == null || b == "", c == null || c == "", d == null || d == "") {
      alert("Please Fill All Required Field");
      return false;
    }
  }
</script>
</head>
<body>

<div class="container">
  <form action="checkout.php" method="post" name="Form" onsubmit="return validateForm()">
  <input type="hidden" name="processform" value="1">
    <div class="row">
      <div class="col-25">
        <label for="field">Title:</label>
      </div>
      <div class="col-75">
        <input type="text" id="field1" name="firstfield" placeholder="Value...">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="field">Date-of-issue:</label>
      </div>
      <div class="col-75">
        <input type="text" id="field2" name="secondfield">
	<script>
	  var today = new Date();
	  var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	  document.getElementById("field2").value = date;
</script>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="field">Date-of-Return:</label>
      </div>
      <div class="col-75">
        <input type="text" id="field3" name="thirdfield">
	<script>
	  var date = new Date(new Date().setDate(new Date().getDate() + 30));
	  document.getElementById("field3").value =date;
</script>
      </div>
    </div>
      <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
