/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ejb.session;

import com.ejb.entity.Miles;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Mishra
 */
@Stateless
public class MilesFacade extends AbstractFacade<Miles> implements MilesFacadeLocal {
    @PersistenceContext(unitName = "MilesToGo-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MilesFacade() {
        super(Miles.class);
    }
    
}
