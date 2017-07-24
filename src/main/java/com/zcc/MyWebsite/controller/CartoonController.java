package com.zcc.MyWebsite.controller;

import com.zcc.MyWebsite.dao.CartoonDao;
import com.zcc.MyWebsite.entity.CartoonEpisodeInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 21:16
 */
@Controller
@RequestMapping("/cartoon")
public class CartoonController {
    @Resource(name = "cartoonInfo")
    private Map<String, List<CartoonEpisodeInfo>> cartoons;
    @RequestMapping(value = "/{name}/{episode}", method = RequestMethod.GET)
    public String getCartoon(@PathVariable("name") String name,@PathVariable("episode") Integer episode, Model model){
        List<CartoonEpisodeInfo> infos = cartoons.get(name);
        for (CartoonEpisodeInfo info:infos){
            if(info.getEpisode()==episode){
                model.addAttribute("picUrls", info.getOrderinfo());
                break;
            }
        }
        model.addAttribute("content", "cartoon");
        return "home";
    }
}
