package cn.spdd.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.spdd.pojo.Goods;

public interface GoodsService {
	public Goods selectById(Integer id);
	
	public List<Goods> selectByDistrict(@Param("district")Integer district);
	
	public int update(Goods goods);
}
