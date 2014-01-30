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
         <title>Mile To Go</title>
         <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/bootstrap-timepicker.min.css" rel="stylesheet">
         <link href="css/jquery-ui.css" rel="stylesheet">         
         <link href="css/redmond/jquery-ui.css" rel="stylesheet">
         <link href="css/redmond/jquery-ui.theme.css" rel="stylesheet">
         <link href="css/milesnavbar.css" rel="stylesheet">
         <link href="css/miles.css" rel="stylesheet">
         
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
                        <li class="active"><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
                    </ul>   
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/MilesToGo-war/MileController?CMD=REGISTER_FORM">Register</a></li>
                    </ul>
                 </div>
            </nav>


              <div class="row">
                <div class="col-lg-3"><aside></aside></div>
                <div class="col-lg-5"> 
                    <article>
                        <form id="addEventForm" action="/MilesToGo-war/MileController" role="form" class="form-horizontal">
                            <div class="form-group">
                                <input type="hidden" name="CMD" value="ADD_EVENT_FORM_SUBMIT"/>
                                <div class="row">
                                     <div class="col-lg-3">
                                         <label class="control-label">Title</label>
                                     </div>
                                     <div class="col-lg-9"><input name="title" type="text" class="required form-control"/></div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-3">
                                        <label class="control-label">Sport</label>
                                    </div>
                                    <div class="col-lg-9">
                                        <select name="type" class="required form-control">
                                            <option value="Cycling">Cycling</option>
                                            <option value="Running">Running</option>
                                            <option value="Swimming">Swimming</option>
                                            <option value="Walking">Walking</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label">Date</label></div>
                                     <div class="col-lg-9"><input name="date" id="eventdate" type="text" class="date required form-control"/></div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label">Start Time</label></div>
                                     <div class="col-lg-9">
                                         <div class="input-append bootstrap-timepicker-component">
                                            <input name="starttime" id="starttime"  type="text" class="input-small timepicker-default required form-control"/>
                                            <span class="add-on"><i class="icon-time"></i></span>
                                         </div>
                                     </div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label">End Time</label></div>
                                        <div class="col-lg-9">
                                             <div class="input-append bootstrap-timepicker-component">
                                                <input name="endtime" id="endtime"  type="text" class="input-small timepicker-default required form-control"/>
                                                <span class="add-on"><i class="icon-time"></i></span>
                                             </div>
                                         </div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label" >Distance</label></div>
                                     <div class="col-lg-9"><input name="distance" type="text" class="required numeric form-control tooltips" data-toggle="tooltip" title="Please provide distance is kilometers"/></div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label">Location</label></div>
                                     <div class="col-lg-9"><input name="location" type="text" class="required form-control"/></div>
                                </div>
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label">Description</label></div>
                                     <div class="col-lg-9"><textarea  name="description" class="form-control" rows="3"></textarea></div>                       
                                </div>  
                                <div class="row">
                                     <div class="col-lg-3"><label class="control-label"></label></div>
                                     <div class="col-lg-9"><button type="button" id="addEventButton" class="btn btn-info">Log an Event</button></div>                       
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
