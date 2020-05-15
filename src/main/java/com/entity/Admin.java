package com.entity;

import lombok.Data;

import java.sql.Date;

@Data
public class Admin {
    Integer id;
    String account;
    String passwd;
    String name;
    Date time;
    String status;
}
