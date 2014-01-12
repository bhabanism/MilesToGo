package com.ejb.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-01-12T21:46:59")
@StaticMetamodel(Miles.class)
public class Miles_ { 

    public static volatile SingularAttribute<Miles, Short> id;
    public static volatile SingularAttribute<Miles, Date> startTime;
    public static volatile SingularAttribute<Miles, Date> mileDate;
    public static volatile SingularAttribute<Miles, Integer> distance;
    public static volatile SingularAttribute<Miles, String> title;
    public static volatile SingularAttribute<Miles, String> location;
    public static volatile SingularAttribute<Miles, String> description;
    public static volatile SingularAttribute<Miles, String> mileType;
    public static volatile SingularAttribute<Miles, Date> endTime;

}