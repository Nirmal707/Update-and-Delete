<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Document</title>
        </head>

        <body>
            ${person}
            <table>
                <c:forEach items="${products}" var="charan">
                    <tr>

                        <td id=${charan.id}>${charan.id}</td>
                        <td>
                            <c:out value="${charan.name}" />
                        </td>
                        <td>
                            <c:out value="${charan.description}" />
                        </td>
                        <td>
                                <c:out value="${charan.price}" />
                            </td>
                        <td>
                            <fmt:formatNumber value="${charan.price}" type="currency" currencyCode="USD" />
                        </td>
                       
                         <td><a href='delete?id=${charan.id}'>delete</a></td> 
                         <td><a href='update?id=${charan.id}'>update</a></td> 
                    </tr>

                </c:forEach>
            </table>
        </body>

        </html>