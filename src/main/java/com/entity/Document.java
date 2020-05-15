package com.entity;

import lombok.Data;

import java.sql.Date;

@Data
public class Document {
    Integer id;
    String title;
    Date time;
    Integer person;
    String path;
    String ms;
    String status;
}
