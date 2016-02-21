package com.pblog.service.article;

import com.pblog.core.orm.PageRequest;
import com.pblog.core.orm.Pagination;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ArticleInfoService {

    List<ArticleInfoVO> findTopTenArticlesByCreateTime();

    ArticleInfoVO findArticleBySlug(Long slug, HttpServletRequest request);

    Pagination<ArticleInfoVO> page(PageRequest pageRequest);
}
