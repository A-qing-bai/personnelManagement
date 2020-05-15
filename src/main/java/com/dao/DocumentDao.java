package com.dao;
import com.entity.Document;

import java.util.List;

public interface DocumentDao {
    List<Document> selectAll();
    Document selectById(Integer id);
    Document selectByPage(Integer begin, Integer size);
    int insert(Document document);
    int update(Document document);
    int delete(Integer id);
}
