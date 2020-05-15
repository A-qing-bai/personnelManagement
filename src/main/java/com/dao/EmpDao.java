package com.dao;

import com.entity.Admin;
import com.entity.Emp;

import java.util.List;

public interface EmpDao {
    List<Emp> selectAll();
    Emp selectById(Integer id);
    Emp selectByPage(Integer begin, Integer size);
    int insert(Emp emp);
    int update(Emp emp);
    int delete(Integer id);
}
