/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ejb.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Mishra
 */
@Entity
@Table(name = "MILES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Miles.findAll", query = "SELECT m FROM Miles m"),
    @NamedQuery(name = "Miles.findById", query = "SELECT m FROM Miles m WHERE m.id = :id"),
    @NamedQuery(name = "Miles.findByMileType", query = "SELECT m FROM Miles m WHERE m.mileType = :mileType"),
    @NamedQuery(name = "Miles.findByMileDate", query = "SELECT m FROM Miles m WHERE m.mileDate = :mileDate"),
    @NamedQuery(name = "Miles.findByStartTime", query = "SELECT m FROM Miles m WHERE m.startTime = :startTime"),
    @NamedQuery(name = "Miles.findByEndTime", query = "SELECT m FROM Miles m WHERE m.endTime = :endTime"),
    @NamedQuery(name = "Miles.findByDistance", query = "SELECT m FROM Miles m WHERE m.distance = :distance"),
    @NamedQuery(name = "Miles.findByTitle", query = "SELECT m FROM Miles m WHERE m.title = :title"),
    @NamedQuery(name = "Miles.findByLocation", query = "SELECT m FROM Miles m WHERE m.location = :location"),
    @NamedQuery(name = "Miles.findByDescription", query = "SELECT m FROM Miles m WHERE m.description = :description"),
    @NamedQuery(name = "Miles.findMaxId", query = "SELECT max(m.id) FROM Miles m")})
public class Miles implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Short id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "MILE_TYPE")
    private String mileType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MILE_DATE")
    @Temporal(TemporalType.DATE)
    private Date mileDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "START_TIME")
    @Temporal(TemporalType.TIME)
    private Date startTime;
    @Basic(optional = false)
    @NotNull
    @Column(name = "END_TIME")
    @Temporal(TemporalType.TIME)
    private Date endTime;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DISTANCE")
    private int distance;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "TITLE")
    private String title;
    @Size(max = 100)
    @Column(name = "LOCATION")
    private String location;
    @Size(max = 200)
    @Column(name = "DESCRIPTION")
    private String description;

    public Miles() {
    }

    public Miles(Short id) {
        this.id = id;
    }

    public Miles(Short id, String mileType, Date mileDate, Date startTime, Date endTime, int distance, String title, String location, String description) {
        this.id = id;
        this.mileType = mileType;
        this.mileDate = mileDate;
        this.startTime = startTime;
        this.endTime = endTime;
        this.distance = distance;
        this.title = title;
        this.location = location;
        this.description = description;
    }
    
     public Miles(Short id, String mileType, Date mileDate, Date startTime, Date endTime, int distance, String title) {
        this.id = id;
        this.mileType = mileType;
        this.mileDate = mileDate;
        this.startTime = startTime;
        this.endTime = endTime;
        this.distance = distance;
        this.title = title;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Miles)) {
            return false;
        }
        Miles other = (Miles) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.ejb.entity.Miles[ id=" + id + " ]";
    }
    
}
