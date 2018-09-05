package com.dx.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.dx.entity.User;

public class MyTest {
	@Test
	public void test() throws IOException{
		 InputStream inputStream= Resources.getResourceAsStream("Configuration.xml");
		 SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		 SqlSession sqlSession= sqlSessionFactory.openSession();
		 List<User> li = sqlSession.selectList("User.selectAllUser");
		 System.out.println(li);
	}
}
