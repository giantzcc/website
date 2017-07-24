package com.zcc.MyWebsite.config;

import com.zcc.MyWebsite.dao.CartoonDao;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.io.IOException;
import java.util.Properties;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 10:30
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.zcc.MyWebsite.controller"})
public class WebConfig extends WebMvcConfigurerAdapter {
//    @Bean
//    public MessageSource messageSource(){
//        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
//        messageSource.setBasename("messages");
//        return messageSource;
//    }

//    @Bean
//    public MessageSource messageSource(){
//        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
//        messageSource.setBasename("classpath:messages");
//        messageSource.setCacheSeconds(10);
//        return messageSource;
//    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        Properties prop = new Properties();
        try {
            prop.load(CartoonDao.class.getClassLoader().getResourceAsStream("config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        registry.addResourceHandler("/css/**",
                "/js/**",
                "/image/**",
                "/cartoondata/**"
        ).addResourceLocations("/css/",
                        "/js/",
                        "/image/",
                        "file:"+prop.getProperty("CartoonPath")+"/"
                );
    }

    @Bean
    public ViewResolver viewResolver(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/views/");
        resolver.setSuffix(".jsp");
        resolver.setExposeContextBeansAsAttributes(true); //可以在JSP页面中通过${}访问beans
        return resolver;
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }
}

