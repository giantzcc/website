package com.zcc.MyWebsite.config;

import com.zcc.MyWebsite.dao.ArticleDao;
import com.zcc.MyWebsite.dao.CartoonDao;
import com.zcc.MyWebsite.entity.ArticleType;
import com.zcc.MyWebsite.entity.CartoonEpisodeInfo;
import com.zcc.MyWebsite.service.ArticleService;
import com.zcc.MyWebsite.util.PathUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.io.File;
import java.io.IOException;
import java.util.*;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 10:41
 */
@Configuration
@ComponentScan(basePackages = {"com.zcc.MyWebsite.dao","com.zcc.MyWebsite.service"},
        excludeFilters = {@ComponentScan.Filter(type = FilterType.ANNOTATION, value = EnableWebMvc.class)})
public class RootConfig {
    @Bean(name = "cartoonInfo")
    public Map<String, List<CartoonEpisodeInfo>> getCartoonInfo(){
        Map<String, List<CartoonEpisodeInfo>> infos = new HashMap<>();
        CartoonDao.updateInfos(infos);
        return infos;
    }

    @Bean(name = "articleTypes")
    public List<ArticleType> getArticleTypes(ArticleService service){
        return service.getArticleTypes();
    }
}
