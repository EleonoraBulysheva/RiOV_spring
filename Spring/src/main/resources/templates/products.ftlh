<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">




    <title>Demo</title>
</head>
<body>
<h1>Demo</h1><hr>
<!--<form action="/" method="get">
    <input type="text" name="title"/><br>
    <input type="submit" value="Поиск"/>
</form>-->
<p>
    <#list products as product>
        <div>

            <p>${product.description}</p>
            <a href="/product/${product.id}">Подробнее</a>
            <hr>
        <#else>
            <h3>Товаров нет</h3>
        </div>

    </#list>
</p>


<h3>Создать новое объявление</h3>

<form action="/product/create" method="post" enctype="multipart/form-data"><br>

        <!--<input type="number" name="id"/><br>-->

        <p>Название</p><input type="text" name="title"/><br>

        <p>Описание</p><input type="text" name="description"/><br>

        <!--<input type="number" name="price"/><br>-->

        <p>Автор</p><input type="text" name="author"/><br>

        <p>Город</p><input type="text" name="city"/><br>

        <input type="file" name="file1"/><br>

        <input type="file" name="file2"/><br>

        <input type="file" name="file3"/><br>


        <input class="submit-input" type="submit" value="Добавить объявление"/><br>
    </div>
</form>




</body>
</html>