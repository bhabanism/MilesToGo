/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mile.client;

import com.ejb.entity.Users;
import com.ejb.session.UsersFacadeLocal;
import com.mile.data.UserData;
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
public class UserClient {
    UsersFacadeLocal usersFacade = lookupUsersFacadeLocal();

    private UsersFacadeLocal lookupUsersFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (UsersFacadeLocal) c.lookup("java:global/MilesToGo/MilesToGo-ejb/UsersFacade!com.ejb.session.UsersFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public void createUser(UserData uData)  {
        Users user = UserData.getUser(uData);
        usersFacade.create(user);
    }
    
    public Short getMaxId() {
        Short id = 0;
        try {
            id = usersFacade.getMaxId();
        } catch(Exception e) {
        }
        return id;
    }
    
}
