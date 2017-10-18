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
import com.thinkgem.jeesite.modules.sc.entity.TScUser;
import com.thinkgem.jeesite.modules.sc.service.TScUserService;

/**
 * 商城用户表Controller
 * @author dongge
 * @version 2017-10-18
 */
@Controller
@RequestMapping(value = "${adminPath}/sc/tScUser")
public class TScUserController extends BaseController {

	@Autowired
	private TScUserService tScUserService;
	
	@ModelAttribute
	public TScUser get(@RequestParam(required=false) String id) {
		TScUser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = tScUserService.get(id);
		}
		if (entity == null){
			entity = new TScUser();
		}
		return entity;
	}
	
	@RequiresPermissions("sc:tScUser:view")
	@RequestMapping(value = {"list", ""})
	public String list(TScUser tScUser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TScUser> page = tScUserService.findPage(new Page<TScUser>(request, response), tScUser); 
		model.addAttribute("page", page);
		return "modules/sc/tScUserList";
	}

	@RequiresPermissions("sc:tScUser:view")
	@RequestMapping(value = "form")
	public String form(TScUser tScUser, Model model) {
		model.addAttribute("tScUser", tScUser);
		return "modules/sc/tScUserForm";
	}

	@RequiresPermissions("sc:tScUser:edit")
	@RequestMapping(value = "save")
	public String save(TScUser tScUser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, tScUser)){
			return form(tScUser, model);
		}
		tScUserService.save(tScUser);
		addMessage(redirectAttributes, "保存商城用户表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScUser/?repage";
	}
	
	@RequiresPermissions("sc:tScUser:edit")
	@RequestMapping(value = "delete")
	public String delete(TScUser tScUser, RedirectAttributes redirectAttributes) {
		tScUserService.delete(tScUser);
		addMessage(redirectAttributes, "删除商城用户表成功");
		return "redirect:"+Global.getAdminPath()+"/sc/tScUser/?repage";
	}

}