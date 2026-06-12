package com.sist.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

import com.sist.vo.GoodsVO;

public class GoodsDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static List<GoodsVO> goodsListData(Map map) {
		SqlSession session = ssf.openSession();
		List<GoodsVO> list = session.selectList("goodsListData", map);
		session.close();
		return list;
	}

	public static int goodsTotalPage(Map map) {
		SqlSession session = ssf.openSession();
		int total = session.selectOne("goodsTotalPage", map);
		session.close();
		return total;
	}
	
	public static GoodsVO goodsDetailData(Map map) {
		SqlSession session=ssf.openSession();
		String t=(String)map.get("table");
		session.update("hitIncrement", map);
		GoodsVO vo=session.selectOne("goodsDetailData", map);
		session.close();
		return vo;
	}
}
