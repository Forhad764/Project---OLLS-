 {% load static %}
<!DOCTYPE php>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Panel | Dashboard</title>
 
</head>
<body >

         
         {%  for d in data %} 
         <h2> NID :{{ d.nid }}</h2>
         
         {% endfor %}

      


</body>
</html>
