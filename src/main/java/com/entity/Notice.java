package com.entity;

import lombok.Data;

import java.sql.Date;
import java.util.List;

@Data
public class Notice {
    Integer id;
    String name;
    String content;
    Date time;
    Admin person;
    String status;
}
