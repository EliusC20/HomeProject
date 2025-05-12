package za.ac.tut.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2025-05-12T13:47:40")
@StaticMetamodel(Complaint.class)
public class Complaint_ { 

    public static volatile SingularAttribute<Complaint, Date> cdate;
    public static volatile SingularAttribute<Complaint, String> ComplaintName;
    public static volatile SingularAttribute<Complaint, String> description;
    public static volatile SingularAttribute<Complaint, String> comment;
    public static volatile SingularAttribute<Complaint, Long> id;
    public static volatile SingularAttribute<Complaint, String> title;
    public static volatile SingularAttribute<Complaint, String> status;

}