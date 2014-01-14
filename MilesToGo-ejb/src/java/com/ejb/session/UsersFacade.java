/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ejb.session;

import com.ejb.entity.Users;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Mishra
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> implements UsersFacadeLocal {
    @PersistenceContext(unitName = "MilesToGo-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }
    
    @Override
     public Short getMaxId() {
        Short id = 0;
        try {
         id = (Short)em.createNamedQuery("Users.findMaxId").
                 getResultList().get(0);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return id;
    }
    
}
