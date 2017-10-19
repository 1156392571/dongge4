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
import com.thinkgem.jeesite.modules.sc.entity.TScOrder;
import com.thinkgem.jeesite.modules.sc.service.TScOrderService;

/**
 * 订单表Controller
 * @author dongge
 * @version 2017-10-19
 */
@Controller
@RequestMapping(value = "${adminPath}/sc/tScOrder")
public class TScOrderController extends BaseController {

	@Autowired
	private TScOrderService tScOrderService;
	
	@ModelAttribute
	public TScOrder get(@RequestParam(required=false) String id) {
		TScOrder entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = tScOrderService.get(id);
		}
		if (entity == null){
			entity = new TScOrder();
		}
		return entity;
	}
	
	@RequiresPermissions("sc:tScOrder:view")
	@RequestMapping(value = {"list", ""})
	public String list(TScOrder tScOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TScOrder> page = tScOrderService.findPage(new Page<TScOrder>(request, response), tScOrder); 
		model.addAttribute("page", page);
		return "modules/sc/tScOrderList";
	}

	@RequiresPermissions("sc:tScOrder:view")
	@RequestMapping(value = "form")
	public String form(TScOrder tScOrder, Model model) {
		model.addAttribute("tScOrder", tScOrder);
		return "modules/sc/tScOrderForm";
	}

	@RequiresPermissions("sc:tScOrder:edit")
	@RequestMapping(value = "save")
	public String save(TScOrder tScOrder, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, tScOrder)){
			return form(tScOrder, model);
		}
		tScOrderService.save(tScOrder);
		addMessage(redirectAttributes, "保存订单表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScOrder/?repage";
	}
	
	@RequiresPermissions("sc:tScOrder:edit")
	@RequestMapping(value = "delete")
	public String delete(TScOrder tScOrder, RedirectAttributes redirectAttributes) {
		tScOrderService.delete(tScOrder);
		addMessage(redirectAttributes, "删除订单表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScOrder/?repage";
	}

}