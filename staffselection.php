<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="finalstyle.css">
</head>
<title>Library</title>
<body>

  <h1> <strong>Library Management System</strong>&emsp;</h1>
  <h2> Login as a </h2>


    <a class="play" href="staffbookadd.php">Add BOOk</a>
    <a class="play" href="staffcheckout.php">Checkout</a>

</body>

<style>

html,body{
  margin: 0;
  padding: 0;
  border: none;
  background: white;
}
.container {
  width: 100%;
  margin-top: 10%;
  text-align: center;
  font-weight: bold;
}
h1 {
  font-size: 50pt;
  color: black;
  letter-spacing: 3pt;
  margin: 15px 0 20px 0;
  text-align: center;
}
h2 {
  font-size: 18pt;
  color: black;
  margin: 0 0 10px 0;
  text-align: center;

}

.play {
  display: inline-block;
  margin: 0 60px;
  padding: 20px;
  color: black;
  font-family: Gyparody;
  font-size: 20pt;
  border: 5px solid #0000cc;
  border-radius: 10px;
  text-decoration: none;
  background-color: white;
  letter-spacing: 1pt;
  margin-top: 10%;
  margin-left: 21.5%;
}
.play:hover {
  background-color: #111fba;
}

table {
 border-collapse: collapse;
  border-spacing: 0;
  width: 50%;
  margin-left: 24%;
  margin-top: 5%; 

}
tr:nth-child(odd) {
  background-color: white;
}
tr:nth-child(even) {
  background-color: blue;
}

tr, td {
  padding: 15px;
}

#mytable{
	text-align:left;
}
h2{
	text-align:center;
}
ul {
  list-style: none;
}
ul li::before {
  content: "\2022";
  color:#cb8feb ;
}
</style>
</html>
