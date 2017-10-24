/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.sc.entity.TScShop;
import com.thinkgem.jeesite.modules.sc.entity.TScShopSize;
import com.thinkgem.jeesite.modules.sc.service.TScShopService;
import com.thinkgem.jeesite.modules.sc.service.TScShopSizeService;

/**
 * 商品规格表Controller
 * @author dongge
 * @version 2017-10-23
 */
@Controller
@RequestMapping(value = "${adminPath}/sc/tScShopSize")
public class TScShopSizeController extends BaseController {

	@Autowired
	private TScShopSizeService tScShopSizeService;
	@Autowired
	private TScShopService tScShopService;
	
	@ModelAttribute
	public TScShopSize get(@RequestParam(required=false) String id) {
		TScShopSize entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = tScShopSizeService.get(id);
		}
		if (entity == null){
			entity = new TScShopSize();
		}
		return entity;
	}
	
	@RequiresPermissions("sc:tScShopSize:view")
	@RequestMapping(value = {"list", ""})
	public String list(TScShopSize tScShopSize, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TScShopSize> page = tScShopSizeService.findPage(new Page<TScShopSize>(request, response), tScShopSize); 
		model.addAttribute("page", page);
		model.addAttribute("tScShopSize", tScShopSize);
		//获取商品名称列表
		TScShop tScShop=new TScShop();
		List<TScShop> list=tScShopService.findList(tScShop);
		model.addAttribute("list", list);
		return "modules/sc/tScShopSizeList";
	}

	@RequiresPermissions("sc:tScShopSize:view")
	@RequestMapping(value = "form")
	public String form(TScShopSize tScShopSize, Model model) {
		model.addAttribute("tScShopSize", tScShopSize);
		return "modules/sc/tScShopSizeForm";
	}

	@RequiresPermissions("sc:tScShopSize:edit")
	@RequestMapping(value = "save")
	public String save(TScShopSize tScShopSize, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, tScShopSize)){
			return form(tScShopSize, model);
		}
		tScShopSizeService.save(tScShopSize);
		addMessage(redirectAttributes, "保存商品规格表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScShopSize/?repage";
	}
	
	@RequiresPermissions("sc:tScShopSize:edit")
	@RequestMapping(value = "delete")
	public String delete(TScShopSize tScShopSize, RedirectAttributes redirectAttributes) {
		tScShopSizeService.delete(tScShopSize);
		addMessage(redirectAttributes, "删除商品规格表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScShopSize/?repage";
	}

}