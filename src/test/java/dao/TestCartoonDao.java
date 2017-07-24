package dao;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zcc.MyWebsite.dao.CartoonDao;
import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 19:16
 */
public class TestCartoonDao {
    private CartoonDao dao;
    @Before
    public void prepare(){
        dao = new CartoonDao("ONEPIECE");
    }
    @Test
    public void testPath() throws IOException {
        System.out.println(dao.getPath());
    }
}
