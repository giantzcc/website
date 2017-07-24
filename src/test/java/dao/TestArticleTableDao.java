package dao;

import com.zcc.MyWebsite.config.JDBCConfig;
import com.zcc.MyWebsite.dao.ArticleDao;
import com.zcc.MyWebsite.entity.Article;
import com.zcc.MyWebsite.entity.ArticleType;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 16:36
 */
public class TestArticleTableDao {
    @Test
    public void testArticleType(){
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(JDBCConfig.class);
        ArticleDao dao = (ArticleDao)context.getBean(ArticleDao.class);
        for (ArticleType tp:dao.findAllTypes())
            System.out.println(tp.getTypeName());
    }
    @Test
    public void testArticle(){
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(JDBCConfig.class);
        ArticleDao dao = (ArticleDao)context.getBean(ArticleDao.class);
        System.out.println(dao.findArticlesCount(1));
        for(Article art:dao.findPageArticles(1,0,5))
            System.out.println(art.getContent());
    }
}
