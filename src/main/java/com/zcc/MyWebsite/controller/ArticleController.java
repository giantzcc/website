package com.zcc.MyWebsite.controller;

import com.zcc.MyWebsite.service.ArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 20:47
 */
@Controller
@RequestMapping({"/article"})
public class ArticleController {
    @Resource(name = "articleService")
    private ArticleService service;
    @RequestMapping(value = "/{typeid}/{page}",method = RequestMethod.GET)
    public String showAricleList(@PathVariable Integer typeid, @PathVariable Integer page, Model model){
        model.addAttribute("articleinfos", service.getArticleInfo(typeid, page));
        model.addAttribute("pageInfo", service.getPageInfo(typeid, page));
        model.addAttribute("content", "articlelist");
        model.addAttribute("typeid", typeid);
        return "home";
    }

    @RequestMapping(value = "/detail/{id}")
    public String showArticleDetail(@PathVariable Integer id, Model model){
        model.addAttribute("article", service.getArticle(id));
        model.addAttribute("content", "article");
        return "home";
    }
}
