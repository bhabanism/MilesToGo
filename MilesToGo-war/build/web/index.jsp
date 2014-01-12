<%-- 
    Document   : index
    Created on : Jan 8, 2014, 10:44:42 PM
    Author     : Mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mile To Go</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery-latest.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>  
        <div class="row">            
            <ul class="nav nav-tabs">
                <li class="active"> <a href="/MilesToGo-war/index.jsp">Mile To Go</a></li>
                <li><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                <li><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
            </ul>            
         </div>
        <div class="row">
            <div class="col-lg-3"><aside>Left Nav</aside></div>
            <div class="col-lg-9"> <article> Welcome to Miles To Go! </article></div>
        </div>
      
      
    </body>
</html>
