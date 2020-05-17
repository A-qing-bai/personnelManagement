package com.controller;

import com.dao.AdminDao;
import com.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SessionAttributes("admin")
@Controller
public class adminController {
    @Autowired
    AdminDao adminDao;

    @RequestMapping(value = "/admin/login")
    ModelAndView login(String name, String pwd) {
        Admin a = adminDao.selectByAccountAndPwd(name,pwd);
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin",a);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/admin/selectById/{id}/{flag}")
    ModelAndView selectById(@PathVariable Integer id, @PathVariable Integer flag) {
        Admin a = adminDao.selectById(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("a",a);
        if (flag == 1) {
            mv.setViewName("user_select");
        }else{
            mv.setViewName("user_update");
        }
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

    @RequestMapping(value = "/admin/selectByName/{name}")
    @ResponseBody
    Map<String, Object> selectByName(@PathVariable String name) throws UnsupportedEncodingException {
        String str = new String(name.getBytes("ISO-8859-1"),"UTF-8");
        Map<String,Object> map = new HashMap<>();
        List<Admin> list = adminDao.selectByName("%"+str+"%");
        map.put("code",0);
        map.put("mag","");
        map.put("count",list.size());
        map.put("data",list);
        return map;
    }

    @RequestMapping(value = "/admin/insert")
    String insert(Admin admin){
        Integer flag = adminDao.insert(admin);
        if (flag>0){
            return "succeed";
        }else {
            return "losing";
        }
    }

    @RequestMapping(value = "/admin/update")
    String update(Admin admin){
        Integer flag = adminDao.update(admin);
        if (flag>0){
            return "succeed";
        }else {
            return "losing";
        }
    }

    @RequestMapping(value = "/admin/delete/{id}")
    String delete(@PathVariable Integer id){
        Integer flag = adminDao.delete(id);
        if (flag>0){
            return "succeed";
        }else {
            return "losing";
        }
    }
}
