package com.entity;

import lombok.Data;

import java.sql.Date;

@Data
public class Emp {
    Integer id;
    String name;
    String sex;
    String phone;
    String email;
    Job job;
    String education;
    String card;
    Dept dept;
    String address;
    Date time;
    String status;

}
