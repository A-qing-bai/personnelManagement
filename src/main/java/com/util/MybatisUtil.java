package com.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class MybatisUtil {
    public static SqlSessionFactory sqlSessionFactory;
    static {
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream("configuration.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static SqlSession getSqlSession(){
       return sqlSessionFactory.openSession();
    }

    public static <T> T getMapper(Class c){
        return (T) getSqlSession().getMapper(c);
    }
}
