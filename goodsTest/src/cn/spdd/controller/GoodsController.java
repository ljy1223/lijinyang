package cn.spdd.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.spdd.pojo.Goods;
import cn.spdd.service.GoodsService;

@Controller
public class GoodsController {

	@Resource
	GoodsService service;

	@RequestMapping(value="/select",method=RequestMethod.POST)
	public String select(@RequestParam Integer district ,Model model){

		List<Goods> goods =service.selectByDistrict(district);
		model.addAttribute("goods",goods);		
		return "list";

	}

	@RequestMapping(value="/selectById")
	public String list(@RequestParam Integer id,Model model){

		Goods goods = service.selectById(id);
		model.addAttribute("goods",goods);

		return "modify";
	}

	@RequestMapping(value="update",method=RequestMethod.POST)
	public String update(Goods goods){
	System.out.println(service.update(goods));
		if(service.update(goods)==1){
			return "index";
		}
		else{
			return "modify";
		}

	}
}
