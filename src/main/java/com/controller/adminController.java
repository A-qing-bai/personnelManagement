package com.controller;

import com.dao.AdminDao;
import com.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SessionAttributes("admin")
@Controller
public class adminController {
    @Autowired
    AdminDao adminDao;

    @RequestMapping(value = "/admin/login/{name}&{pwd}")
    ModelAndView login(@PathVariable String name, @PathVariable String pwd) {
        Admin a = adminDao.selectByAccountAndPwd(name,pwd);

        ModelAndView mv = new ModelAndView();
        mv.addObject("admin",a);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/admin/selectAll")
    @ResponseBody
    Map<String, Object> selectAll() {
        Map<String,Object> map = new HashMap<>();
        List<Admin> list = adminDao.selectAll();
        map.put("code",0);
        map.put("mag","");
        map.put("count",list.size());
        map.put("data",list);
        return map;
    }
}
