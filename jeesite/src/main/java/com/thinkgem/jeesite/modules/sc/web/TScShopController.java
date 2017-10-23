/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sc.web;

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

/**
 * 商品表Controller
 * @author dongge
 * @version 2017-10-19
 */
@Controller
@RequestMapping(value = "${adminPath}/sc/tScShop")
public class TScShopController extends BaseController {

	@Autowired
	private TScShopService tScShopService;
	
	@ModelAttribute
	public TScShop get(@RequestParam(required=false) String id) {
		TScShop entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = tScShopService.get(id);
		}
		if (entity == null){
			entity = new TScShop();
		}
		return entity;
	}
	
	@RequiresPermissions("sc:tScShop:view")
	@RequestMapping(value = {"list", ""})
	public String list(TScShop tScShop, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TScShop> page = tScShopService.findPage(new Page<TScShop>(request, response), tScShop); 
		model.addAttribute("page", page);
		model.addAttribute("tScShop", tScShop);
		return "modules/sc/tScShopList";
	}

	@RequiresPermissions("sc:tScShop:view")
	@RequestMapping(value = "form")
	public String form(TScShop tScShop, Model model) {
		model.addAttribute("tScShop", tScShop);
		return "modules/sc/tScShopForm";
	}

	@RequiresPermissions("sc:tScShop:edit")
	@RequestMapping(value = "save")
	public String save(TScShop tScShop, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, tScShop)){
			return form(tScShop, model);
		}
		tScShopService.save(tScShop);
		addMessage(redirectAttributes, "保存商品表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScShop/?repage";
	}
	
	@RequiresPermissions("sc:tScShop:edit")
	@RequestMapping(value = "delete")
	public String delete(TScShop tScShop, RedirectAttributes redirectAttributes) {
		tScShopService.delete(tScShop);
		addMessage(redirectAttributes, "删除商品表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScShop/?repage";
	}

	/**
	 * 添加产品规格页面
	 */
	@RequiresPermissions("sc:tScShop:view")
	@RequestMapping(value = "addshopsize")
	public String addshopsize(TScShopSize tScShopSize, Model model) {
		TScShop tScShop=tScShopService.get(tScShopSize.getScShopid());
		tScShopSize.setScReserve4(tScShop.getShopName());
		model.addAttribute("tScShopSize", tScShopSize);
		return "modules/sc/tScShopSizeForm";
	}
	
	
}