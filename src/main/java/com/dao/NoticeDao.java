package com.dao;

import com.entity.Notice;

import java.util.List;

public interface NoticeDao {
    List<Notice> selectAll();
    Notice selectById(Integer id);
    Notice selectByPage(Integer begin, Integer size);
    int insert(Notice notice);
    int update(Notice notice);
    int delete(Integer id);
}
