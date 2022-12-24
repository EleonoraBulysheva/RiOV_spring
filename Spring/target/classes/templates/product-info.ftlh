<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Demo</title>
</head>
<body>
<h1>Demo</h1><hr>
<h4>информация об объявлении</h4>

<form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
    <!--<input type="number" name="id"/><br>-->

    <input type="text" name="title"/><br>

    <input type="text" name="description"/><br>

    <input type="text" name="author"/><br>

    <input type="text" name="city"/><br>

    <input type="file" name="file1"/><br>

    <input type="file" name="file2"/><br>

    <input type="file" name="file3"/><br>

    <input type="submit" value="обновить объявление"/><br>
</form>

<#list images as img>
<img src="/images/${img.id?if_exists}" height="150px"/><br><br>
</#list>
<b>Название: </b>${product.title?if_exists}<br>
<b>Описание: </b>${product.description?if_exists}<br>

<b>Город: </b>${product.city?if_exists}<br>
<b>Автор: </b>${product.author?if_exists}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить объявление"/>
</form>





</body>
</html>