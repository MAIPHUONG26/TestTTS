package com.example.testtts.entity;
import java.math.BigInteger;
import java.util.UUID;
import jakarta.persistence.*;
import jakarta.persistence.criteria.CriteriaBuilder;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.type.descriptor.jdbc.TinyIntJdbcType;

import java.util.Date;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "staff")
public class NhanVien {
    @Id
private String id;
    @Column(name = "staff_code")
    private String staff_code;
    @Column(name = "account_fpt")
    private String  account_fpt;
    @Column(name = "account_fe")
    private String account_fe;
//    @Column(name = "name")
//    private String name;
    @Column(name = "status")
    private Byte status;
//    @Column(name = "created_date")
//    private BigInteger created_date;
//    @Column(name = "last_modified_date")
//    private BigInteger last_modified_date;

}
