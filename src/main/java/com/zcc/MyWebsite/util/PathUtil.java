package com.zcc.MyWebsite.util;

import java.io.File;
import java.util.Arrays;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 18:27
 */
public class PathUtil {
    public static String join(String basePath,String...args){
        return basePath + File.separator + String.join(File.separator, args);
    }

    public static String urlJoin(String basePath,String...args){
        return basePath + "/" + String.join("/", args);
    }

    public static String getFileParent(String path){
        return new File(path).getParent();
    }
}
