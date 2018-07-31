package com.sy.platform.moudles.cms.service;

import com.sy.platform.moudles.cms.entity.Article;
import com.sy.platform.moudles.cms.mapper.ArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Lenovo
 * @create 2018/7/27
 */
@Service
public class ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    public Article get(String key){
        return articleMapper.selectByPrimaryKey(key);
    }
}
