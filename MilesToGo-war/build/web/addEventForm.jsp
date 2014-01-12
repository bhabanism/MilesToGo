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
         <link href="css/miles.css" rel="stylesheet">
        <script src="js/jquery-latest.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-timepicker.min.js"></script>
         <script src="js/miles.js"></script>
         
    </head>
    <body>
        <div class="row">            
            <ul class="nav nav-tabs">
                <li><a href="/MilesToGo-war/index.jsp">Mile To Go</a></li>
                <li class="active"><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                <li><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
            </ul>            
         </div>
        
       
          <div class="row">
            <div class="col-lg-3"><aside>Left Nav</aside></div>
            <div class="col-lg-5"> 
                <article>
                    <form id="addEvent" action="/MilesToGo-war/MileController" role="form" class="form-horizontal">
                        <div class="form-group">
                            <input type="hidden" name="CMD" value="ADD_EVENT_FORM_SUBMIT"/>
                            <div class="row">
                                 <div class="col-lg-2">
                                     <label class="control-label">Title</label>
                                 </div>
                                 <div class="col-lg-10"><input name="title" type="text" class="required form-control"/></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2"><label class="control-label">Type of Event</label></div>
                                <div class="col-lg-10">
                                    <select name="type" class="required form-control">
                                        <option value="Cycling">Cycling</option>
                                        <option value="Running">Running</option>
                                        <option value="Swimming">Swimming</option>
                                        <option value="Walking">Walking</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">Date</label></div>
                                 <div class="col-lg-10"><input name="date" id="eventdate" type="text" class="date required form-control"/></div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">Start Time</label></div>
                                 <div class="col-lg-10">
                                     <div class="input-append bootstrap-timepicker-component">
                                        <input name="starttime" id="starttime"  type="text" class="input-small timepicker-default required form-control"/>
                                        <span class="add-on"><i class="icon-time"></i></span>
                                     </div>
                                 </div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">End Time</label></div>
                                    <div class="col-lg-10">
                                         <div class="input-append bootstrap-timepicker-component">
                                            <input name="endtime" id="endtime"  type="text" class="input-small timepicker-default required form-control"/>
                                            <span class="add-on"><i class="icon-time"></i></span>
                                         </div>
                                     </div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">Distance</label></div>
                                 <div class="col-lg-10"><input name="distance" type="text" class="required numeric form-control"/></div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">Location</label></div>
                                 <div class="col-lg-10"><input name="location" type="text" class="required form-control"/></div>
                            </div>
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label">Description</label></div>
                                 <div class="col-lg-10"><textarea  name="description" class="form-control" rows="3"></textarea></div>                       
                            </div>  
                            <div class="row">
                                 <div class="col-lg-2"><label class="control-label"></label></div>
                                 <div class="col-lg-10"><button type="button" id="addEventButton" class="btn btn-info">Log an Event</button></div>                       
                            </div>  
                            
                        </form>
                     </div>
                </article>
            </div><div class="col-lg-4"/> 
        </div>
    </body>
</html>
