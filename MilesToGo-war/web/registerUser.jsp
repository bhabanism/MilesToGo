<%-- 
    Document   : history
    Created on : Jan 8, 2014, 11:40:50 PM
    Author     : Mishra
--%>

<%@page import="java.util.List"%>
<%@page import="com.mile.data.MileData"%>
<%@page import="com.mile.client.MileClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Miles To Go</title>
         <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/bootstrap-timepicker.min.css" rel="stylesheet">
         <link href="css/jquery-ui.css" rel="stylesheet">
         <link href="css/miles.css" rel="stylesheet">
         <link href="css/redmond/jquery-ui.css" rel="stylesheet">
         <link href="css/redmond/jquery-ui.theme.css" rel="stylesheet">
         <link href="css/milesnavbar.css" rel="stylesheet">
         
         <script src="js/jquery-latest.min.js"></script>
         <script src="js/jquery-ui-1.10.3.custom.min.js"></script>
         <script src="js/bootstrap.min.js"></script>
         <script src="js/bootstrap-timepicker.min.js"></script>
         <script src="js/miles.js"></script>
         
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                        <li><a href="/MilesToGo-war/index.jsp">Miles To Go</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
                    </ul> 
                     <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Login</a></li>
                        <li class="active"><a href="/MilesToGo-war/MileController?CMD=REGISTER_FORM">Register</a></li>
                    </ul>
                 </div>
            </nav>


              <div class="row">
                <div class="col-lg-3"><aside></aside></div>
                <div class="col-lg-5"> 
                    <article>
                        <form id="registerUserForm" action="/MilesToGo-war/MileController" role="form">
                            <div class="form-group">
                                <input type="hidden" name="CMD" value="REGISTER_USER"/>
                                <div class="row">
                                     <div class="col-lg-2"></div>
                                     <div class="col-lg-8">
                                        <label class="control-label">Username</label></br>
                                        <input name="username" type="text" class="required form-control"/></br>                                
                                        <label class="control-label">Password</label></br>
                                        <input name="password" type="password" class="required form-control"/></br>                                
                                        <label class="control-label">Email</label></br>
                                        <input name="email" id="email" type="text" class="required form-control"/></br>
                                        <label class="control-label">First Name</label></br>
                                        <input name="firstname" id="firstname" type="text" class="required form-control"/></br>
                                        <label class="control-label">Middle Name</label></br>
                                        <input name="middlename" id="middlename" type="text" class="form-control"/></br>
                                        <label class="control-label">Last Name</label></br>
                                        <input name="lastname" id="lastname" type="text" class="form-control"/></br>
                                         <div class="radio">
                                         <label class="control-label"> 
                                                <input name="gender" type="radio" value="M"> Male</input>
                                         </label> 
                                        </div>
                                         <div class="radio">
                                           <label class="control-label"> 
                                                <input name="gender" type="radio" value="F">Female</input>
                                          </label>
                                        </div></br>
                                        <label class="control-label" >Age</label></br>
                                        <input name="age" id="age" type="text" class="numeric form-control"/></br>                                        
                                        <button type="button" id="registerUserButton" class="btn btn-info">Register</button>                      
                                     </div>
                                <div class="col-lg-2"></div>
                                         
                                </div>                              
                            </form>
                         </div>
                    </article>
                </div>
                <div class="col-lg-4"/> 
            </div>
            <footer>
                <script src="js/milesfooter.js"></script>
            </footer>
        </div>
    </body>
</html>
