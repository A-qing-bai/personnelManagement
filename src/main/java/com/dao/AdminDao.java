package com.dao;

import com.entity.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    List<Admin> selectAll();
    Admin selectByAccountAndPwd(@Param("account") String account ,@Param("pwd") String pwd);
    Admin selectById(@Param("id") Integer id);
    Admin selectByPage(Integer begin , Integer size);
    int insert(Admin admin);
    int update(Admin admin);
    int delete(Integer id);
}
