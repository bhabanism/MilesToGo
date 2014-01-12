/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Mishra
 */
package com.mile.data;

import com.ejb.entity.Miles;
import java.util.Date;

public class MileData {

    public static Miles getMiles(MileData mData) {
        Miles mile = new Miles(mData.getId(), mData.getMileType(), mData.getMileDate(), mData.getStartTime(), mData.getEndTime(), mData.getDistance(),mData.getTitle(), mData.getLocation(), mData.getDescription());
        return mile;
    }
    private Short id;    
    private String mileType;
    private Date mileDate;
    private Date startTime;
    private Date endTime;
    private int distance;
    private String title;
    private String location;
    private String description;

    public MileData(Miles mile) {
        this.id = mile.getId();
        this.mileType = mile.getMileType();
        this.mileDate = mile.getMileDate();
        this.startTime = mile.getStartTime();
        this.endTime = mile.getEndTime();
        this.distance = mile.getDistance();
        this.title = mile.getTitle();
        this.location = mile.getLocation();
        this.description = mile.getDescription();  
    }

    public MileData() {
       
    }


    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getMileType() {
        return mileType;
    }

    public void setMileType(String mileType) {
        this.mileType = mileType;
    }

    public Date getMileDate() {
        return mileDate;
    }

    public void setMileDate(Date mileDate) {
        this.mileDate = mileDate;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
