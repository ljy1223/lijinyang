package cn.spdd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.spdd.pojo.Goods;

public interface GoodsMapper {
	public Goods selectById(Integer id);
	
	public List<Goods> selectByDistrict(@Param("district")Integer district);
	
	public int update(Goods goods);
}
