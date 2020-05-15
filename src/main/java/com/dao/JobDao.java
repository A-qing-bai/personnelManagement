package com.dao;

import com.entity.Admin;
import com.entity.Job;

import java.util.List;

public interface JobDao {
    List<Job> selectAll();
    Job selectById(Integer id);
    Job selectByPage(Integer begin, Integer size);
    int insert(Job job);
    int update(Job job);
    int delete(Integer id);
}
