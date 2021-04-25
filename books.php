<!DOCTYPE HTML>
<html>
<body bgcolor="white">
<br>

<?php
require_once "config.php";
$search = $_REQUEST["search"];

$query = "select ISBN,Title,Author,Edition,Publication from books where title like '%$search%'"; //search with a book name in the table book_info
$result = mysqli_query($link,$query);

if(mysqli_num_rows($result)>0)if(mysqli_num_rows($result)>0)

{
?>

<table border="2" align="center" cellpadding="5" cellspacing="5">

<tr>
<th> ISBN </th>
<th> Title </th>
<th> Author </th>
<th> Edition </th>
<th> Publication </th>
</tr>

<?php while($row = mysqli_fetch_assoc($result))
{
?>
<tr>
<td><?php echo $row["ISBN"];?> </td>
<td><?php echo $row["Title"];?> </td>
<td><?php echo $row["Author"];?> </td>
<td><?php echo $row["Edition"];?> </td>
<td><?php echo $row["Publication"];?> </td>
<form action="checkout.php" method="post" name="Form" onsubmit="return validateForm()">
 <td><input type="submit" class="btn btn-primary" value="Issue">
</form>
<?php
}
}
else
echo "<center>No books found in the library by the name $search </center>" ;
?>
</table>
</body>
</html>