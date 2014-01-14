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
        <link href="css/milesnavbar.css" rel="stylesheet">
        
        <script src="js/jquery-latest.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>  
        <div class="container">
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#milesnav">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <!--<a class="navbar-brand active" href="#">Miles To Go</a>                    -->
                </div>
            
                <div  class="collapse navbar-collapse" id="milesnav">            
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/MilesToGo-war/index.jsp">Miles To Go</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
                    </ul>            
                 </div>
            </nav>
            <div class="row">
                <div class="col-lg-3"><aside></aside></div>
                <div class="col-lg-5"> <article> Welcome to Miles To Go! </article></div>           
                <div class="col-lg-4"/></div>
            </div>
        </div>
      
      
    </body>
</html>
