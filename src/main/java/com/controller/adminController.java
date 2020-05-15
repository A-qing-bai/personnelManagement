package com.controller;

import com.dao.AdminDao;
import com.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class adminController {
    @Autowired
    AdminDao adminDao;

    @RequestMapping(value = "/admin/login/{name}&{pwd}")
    ModelAndView login(@PathVariable String name, @PathVariable String pwd) {
        Admin a = adminDao.selectByAccountAndPwd(name,pwd);
        System.out.println(a);
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin",a);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/admin")
    String select() {
        List<Admin> list = adminDao.selectAll();
        for (int i =0 ; i<list.size();i++){
            System.out.println(list.get(i));
        }
        return "index";
    }
}
