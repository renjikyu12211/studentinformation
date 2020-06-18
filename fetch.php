<?php

$connect = mysqli_connect("localhost", "root", "", "studentdb");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM tbl_studentinfo 
  WHERE Firstname LIKE '%".$search."%'
  OR LastName LIKE '%".$search."%' 
  OR Age LIKE '%".$search."%' 
  OR Birthday LIKE '%".$search."%' 
  OR Address LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM tbl_studentinfo ORDER BY StudentID
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th>FirstName</th>
     <th>LastName</th>
     <th>Age</th>
     <th>Birthday</th>
     <th>Address</th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["FirstName"].'</td>
    <td>'.$row["LastName"].'</td>
    <td>'.$row["Age"].'</td>
    <td>'.$row["Birthday"].'</td>
    <td>'.$row["Address"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Not Found';
}

?>