/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mile.client;

import com.ejb.entity.Miles;
import com.ejb.session.MilesFacadeLocal;
import com.mile.data.MileData;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Mishra
 */
public class MileClient {
    MilesFacadeLocal milesFacade = lookupMilesFacadeLocal();

    private MilesFacadeLocal lookupMilesFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (MilesFacadeLocal) c.lookup("java:global/MilesToGo/MilesToGo-ejb/MilesFacade!com.ejb.session.MilesFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public MileData getMileById(Short id) {
        Miles mile = milesFacade.find(id);
        MileData mData = new MileData(mile);
        return mData;
    }
    
     public List<MileData> getMileHistory() {
        List<Miles> mileList = milesFacade.findAll();
        List<MileData> mDataList = new ArrayList<>();
        for(Miles mile : mileList) {
            MileData mData = new MileData(mile);
            mDataList.add(mData);
        }        
        return mDataList;
    }
    
}
