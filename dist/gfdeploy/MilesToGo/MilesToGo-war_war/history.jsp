<%-- 
    Document   : history
    Created on : Jan 8, 2014, 11:40:50 PM
    Author     : Mishra
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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
         <link href="css/miles.css" rel="stylesheet">
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
                        <li><a href="/MilesToGo-war/index.jsp">Miles To Go</a></li>
                        <li><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                        <li class="active"><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
                    </ul>   
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/MilesToGo-war/MileController?CMD=REGISTER_FORM">Register</a></li>
                    </ul>
                 </div>
            </nav>
              <div class="row">
                <div class="col-lg-2"><aside></aside></div>
                <div class="col-lg-8"> 
                    <article>  

                    <% 
                        MileClient mClient = new MileClient();
                        List<MileData> mDataList = mClient.getMileHistory();
                        %><div class="table-responsive"><table class='table table-hover table-responsive'>
                            <thead> 
                                <tr>                        
                                    <th> Event Name </th>
                                    <th> Event Type </th>
                                    <th> Date </th>
                                    <th> Distance </th>
                                    <th> Time Taken </th>
                                    <th> Speed </th>
                                    <th> Location </th>
                                </tr> 
                            </thead> 
                            <tbody>
                            <%
                        for(MileData mData : mDataList) {

                            SimpleDateFormat sdfDate = new SimpleDateFormat("MMM dd, yyyy");
                            SimpleDateFormat sdfTime = new SimpleDateFormat("h:mm a");
                            String date = sdfDate.format(mData.getMileDate());

                            String startTime = sdfTime.format(mData.getStartTime());
                            String endTime = sdfTime.format(mData.getEndTime());
                            int msToHour = 3600000;
                            long hoursTaken = (mData.getEndTime().getTime() - mData.getStartTime().getTime())/msToHour;
                            float distance = mData.getDistance();      
                            float speed = 0;
                            if(hoursTaken>0) {
                                speed = distance/hoursTaken;
                            }
                            DecimalFormat df = new DecimalFormat();
                            df.setMaximumFractionDigits(2);

                            String description = mData.getDescription()!=null?mData.getDescription():"";
                            %>
                            <tr>
                                <td><span class="tooltips" data-toggle="tooltip" title="<%=description%>"> <%=mData.getTitle()%> </span></td>
                                <td><span> <%=mData.getMileType()%> </span></td>
                                <td><span> <%=date%> </span></td>
                                <td><span> <%=distance%> km</span></td>
                                <td><span> <%=hoursTaken%> hours</span></td>
                                <td><span> <%= df.format(speed)%> km/hr</span></td>
                                <td><span> <%=mData.getLocation()%> </span></td>
                            </tr>
                            <%
                        }
                        %>
                        </tbody>
                        </table></div>
                    </article>
                </div>
              <div class="col-lg-2"/>
             </div>
            <footer>
                <script src="js/milesfooter.js"></script>
            </footer>
        </div>
    </body>
</html>
