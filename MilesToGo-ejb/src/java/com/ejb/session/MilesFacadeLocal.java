/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ejb.session;

import com.ejb.entity.Miles;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Mishra
 */
@Local
public interface MilesFacadeLocal {

    void create(Miles miles);

    void edit(Miles miles);

    void remove(Miles miles);

    Miles find(Object id);

    List<Miles> findAll();

    List<Miles> findRange(int[] range);

    int count();
    
    Short getMaxId();
    
}
