<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="menu.jsp">
            <jsp:param name="opcion" value="inicio" />
        </jsp:include>
        <div class="container">
            <h1>Anuncios clasificados</h1>
            <c:set var="c" value="0" />
            <c:forEach var="item" items="${avisos}">
                <c:if test="${(c % 3)==0}">
                    <div class="row my-4">
                    </c:if>
                    <div class="col-sm-4" style="float:left">
                        <div class="card">
                            <h5 class="card-header">${item.titulo}</h5>
                            <div class="card-body">
                                <p class="card-text">${item.contenido}</p>
                                <a href="#" class="btn btn-primary">Leer más</a>
                            </div>
                        </div>  
                    </div>
                    <c:if test="${(c % 3)==2}">
                    </div>
                </c:if>
                <c:set var="c" value="${c+1}"/>
            </c:forEach>        
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
