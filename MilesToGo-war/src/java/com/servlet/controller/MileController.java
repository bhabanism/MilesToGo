/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.servlet.controller;

import com.mile.client.MileClient;
import com.mile.data.MileData;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mishra
 */
@WebServlet(name = "MileController", urlPatterns = {"/MileController"})
public class MileController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
            
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String command = request.getParameter("CMD");
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
             if(command!=null && command.equals("HISTORY")) {
                response.sendRedirect("/MilesToGo-war/history.jsp");  
            } else if(command!=null && command.equals("ADD_EVENT")) {
                response.sendRedirect("/MilesToGo-war/addEventForm.jsp?CMD=ADD_EVENT_FORM_SUBMIT");  
            } else if(command!=null && command.equals("ADD_EVENT_FORM_SUBMIT")) {
                boolean status = processAddEventForm(request);
                if(status) {
                    response.sendRedirect("/MilesToGo-war/history.jsp"); 
                } else {
                    response.sendRedirect("/MilesToGo-war/error.jsp");   
                }
                
                //response.sendRedirect("/MilesToGo-war/addEventForm.jsp");  
            }else {
                //response.sendRedirect("/MilesToGo-war/error.jsp");                
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private boolean processAddEventForm(HttpServletRequest request) {
        try {
            MileData mData = new MileData();
            
            
            String sDate = request.getParameter("date");
            SimpleDateFormat sdfDate = new SimpleDateFormat("MM/dd/yyyy");
            Date date = sdfDate.parse(sDate);         
            mData.setMileDate(date);
            
            SimpleDateFormat sdfTime = new SimpleDateFormat("h:mm a");
            String sStartTime = request.getParameter("starttime");
            String sEndTime = request.getParameter("endtime");
            Date dStartTime = sdfTime.parse(sStartTime);
            Date dEndTime = sdfTime.parse(sEndTime);
            mData.setStartTime(dStartTime);
            mData.setEndTime(dEndTime);
            mData.setTitle(request.getParameter("title"));
            mData.setMileType(request.getParameter("type"));   
            
            Float fDistance = Float.parseFloat(request.getParameter("distance"));            
            mData.setDistance(fDistance.intValue());
            mData.setLocation(request.getParameter("location"));
            mData.setDescription(request.getParameter("description"));
            MileClient mClient = new MileClient(); 
            //Short id = 1;
            
            Short id = mClient.getMaxId();
            int intId = id.intValue()+1;
            Short newId = new Short(""+intId);
            mData.setId(newId);
            mClient.createEvent(mData);    
            return true;
        } catch(Exception e) {
            System.err.println("Failed to add Miles : "+e.getMessage());
            e.printStackTrace();
            return false;
        }
        
    }

}
