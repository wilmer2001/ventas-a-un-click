<!DOCTYPE html>
<html>
<head>
<style>
ul.pagination {
    display: inline-block;
    padding: 0;
    margin: 0;
}

ul.pagination li {display: inline;}

ul.pagination li a {
    color: black;
    float: left;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
    margin: 0 4px;
}

ul.pagination li a.active {
    background-color: red;
    color: white;
    border: 1px solid #4CAF50;
}

ul.pagination li a:hover:not(.active) {background-color: #ddd;}
</style>
</head>
<body>

<h2>Pagination with Margins</h2>
<ul class="pagination">
   <li><a href="#"><</a></li>
  <li><a href="#">1</a></li>
  <li><a class="active" href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#">6</a></li>
  <li><a href="#">7</a></li>
  <li><a href="#">></a></li>
</ul>

</body>
</html>