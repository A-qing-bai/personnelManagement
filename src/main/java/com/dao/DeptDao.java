package com.dao;

import com.entity.Dept;

import java.util.List;

public interface DeptDao {
    List<Dept> selectAll();
    Dept selectById(Integer id);
    Dept selectByPage(Integer begin, Integer size);
    int insert(Dept dept);
    int update(Dept dept);
    int delete(Integer id);
}
