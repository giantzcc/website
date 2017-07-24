package com.zcc.MyWebsite.entity;

import java.util.List;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/23 15:09
 */
public class PageInfo {
    public static final int PageSize = 20;
    private int currentPage;
    private List<Integer> pages;
    private int prePages;
    private int nextPages;

    public int getCurrentPage() {
        return currentPage;
    }

    public List<Integer> getPages() {
        return pages;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setPages(List<Integer> pages) {
        this.pages = pages;
    }

    public int getPrePages() {
        return prePages;
    }

    public int getNextPages() {
        return nextPages;
    }

    public void setPrePages(int prePages) {
        this.prePages = prePages;
    }

    public void setNextPages(int nextPages) {
        this.nextPages = nextPages;
    }
}
