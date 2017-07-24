package com.zcc.MyWebsite.controller;

import com.zcc.MyWebsite.dao.CartoonDao;
import com.zcc.MyWebsite.entity.CartoonEpisodeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 10:54
 */
@Controller
@RequestMapping({"/homePage"})
public class HomeController {
    @Resource(name = "cartoonInfo")
    private Map<String, List<CartoonEpisodeInfo>> cartoons;
    @RequestMapping(method = RequestMethod.GET)
    public String home(Model model){
        CartoonDao.updateInfos(cartoons);
        model.addAttribute("content", "blank");
        return "home";
    }
}
