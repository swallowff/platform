package com.sy.platform.moudles.cms.mapper;

import com.sy.platform.common.persistence.annotation.MybatisDao;
import com.sy.platform.moudles.cms.entity.Article;

@MybatisDao
public interface ArticleMapper {
    int deleteByPrimaryKey(String id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
}