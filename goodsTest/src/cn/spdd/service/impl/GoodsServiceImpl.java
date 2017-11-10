package cn.spdd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.spdd.dao.GoodsMapper;
import cn.spdd.pojo.Goods;
import cn.spdd.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Resource
	GoodsMapper mapper;
	
	@Override
	public Goods selectById(Integer id) {
		return mapper.selectById(id);
	}

	@Override
	public List<Goods> selectByDistrict(Integer district) {
		return mapper.selectByDistrict(district);
	}

	@Override
	public int update(Goods goods) {
		return mapper.update(goods);
	}

}
