package com.controller;

import com.dao.DeptDao;
import com.entity.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class deptController {
    @Autowired
    DeptDao deptDao;

    @RequestMapping(value = "/dept")
    String select() {
        List<Dept> list = deptDao.selectAll();
        for (int i =0 ; i<list.size();i++){
            System.out.println(list.get(i));
        }
        return "/index.jsp";
    }

    @RequestMapping(value = "/dept/delete/{id}")
    String delete(@PathVariable Integer id) {
        System.out.println(deptDao.delete(id));
        return "/dept";
    }

}
