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
        <script src="js/jquery-latest.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <header class="row">            
            <ul class="nav nav-tabs">
                <li> <a href="/MilesToGo-war/index.jsp">Mile To Go</a></li>
                <li><a href="/MilesToGo-war/MileController?CMD=ADD_EVENT">Add an Event</a></li>
                <li class="active"><a href="/MilesToGo-war/MileController?CMD=HISTORY">View History</a></li>
            </ul>            
         </header>
          <div class="row">
            <div class="col-lg-3"><aside></aside></div>
            <div class="col-lg-5"> 
                <article>  
       
                <% 
                    MileClient mClient = new MileClient();
                    List<MileData> mDataList = mClient.getMileHistory();
                    %><table class='table table-hover table-responsive'>
                        <thead> 
                            <tr>                        
                                <td> Event Name </td>
                                <td> Event Type </td>
                                <td> Date </td>
                                <td> Distance </td>
                                <td> Time Taken </td>
                                <td> Speed </td>
                                <td> Location </td>
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
                    </table>
                </article>
            </div>
          <div class="col-lg-4"/>
         </div>
        <footer>
            <script src="js/milesfooter.js"></script>
        </footer>
    </body>
</html>
