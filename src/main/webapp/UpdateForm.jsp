<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Product details</title>
</head>
<body>

<div align="center">
    <c:if test="${products != null}">
        <form action="update" method="post">
    </c:if>
    
        <table border="1" cellpadding="5">
       
            <c:if test="${products != null}">
                <input type="text" name="id" value="<c:out value='${products}' />" />
            </c:if>           
        <tr>
            <th>Title: </th>
            <td>
                <input type="text" name="name" size="45"
                        value="<c:out value='${prd.name}' />"
                    />
            </td>
        </tr>
        <tr>
            <th>Author: </th>
            <td>
                <input type="text" name="description" size="45"
                        value="<c:out value='${prd.description}' />"
                />
            </td>
        </tr>
        <tr>
            <th>Price: </th>
            <td>
                <input type="text" name="price" size="5"
                        value="<c:out value='${prd.price}' />"
                />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Save" />               
            </td>
        </tr>
    </table>
    </form>
</div>   
</body>
</html>