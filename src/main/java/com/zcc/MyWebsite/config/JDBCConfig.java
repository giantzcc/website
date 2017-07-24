package com.zcc.MyWebsite.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

import java.beans.PropertyVetoException;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 16:14
 */
@Configuration
@ComponentScan(basePackages = {"com.zcc.MyWebsite.dao"})
@EnableTransactionManagement
public class JDBCConfig implements TransactionManagementConfigurer {
    @Bean(name = "comboPooledDataSourceID")
    public ComboPooledDataSource getC3P0() {
        ComboPooledDataSource ds = new ComboPooledDataSource();
        try {
            ds.setDriverClass("com.mysql.jdbc.Driver");
        } catch (PropertyVetoException e) {
            e.printStackTrace();
            throw new RuntimeException("数据库驱动加载错误！");
        }
        ds.setJdbcUrl("jdbc:mysql://127.0.0.1:3306/mywebsite");
        ds.setUser("root");
        ds.setPassword("root");
        return ds;
    }
    @Bean(name = "sqlSessionFactoryBeanID")
    public SqlSessionFactoryBean getSessionFactory(ComboPooledDataSource ds){
        SqlSessionFactoryBean factory = new SqlSessionFactoryBean();
        factory.setConfigLocation(new ClassPathResource("mybatis.xml"));
        factory.setDataSource(ds);
        return factory;
    }
    @Bean(name = "dataSourceTransactionManagerID")
    public DataSourceTransactionManager getTransactionManager(ComboPooledDataSource ds){
        DataSourceTransactionManager manager = new DataSourceTransactionManager();
        manager.setDataSource(ds);
        return manager;
    }

    @Override
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return getTransactionManager(getC3P0());
    }
}
