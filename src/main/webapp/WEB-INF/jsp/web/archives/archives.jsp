<%@ include file="../include/namespace.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="archive-panel">
    <div class="archive-head">文章存档</div>
    <div class="archive-list">
        <ul>
            <li ng-repeat="archivesVO in archivesList">
                <a href="${staticDomain}/archives/{{ archivesVO.timeStamp | date:'yyyy-MM' }} />"
                   {{ archivesVO.timeStamp | date:'yyyy年MM月' }}
                </a>
                <span>{{ archivesVO.articleInfoVOList.length + 1 }}</span>
            </li>
        </ul>
    </div>
</div><%--
<div class="archive-article-list">
    <c:forEach var="articleInfoVO" items="${articleInfoVOList}" varStatus="status">
        <div class="article-item">
            <div class="article-head">
                        <span class="article-title">
                            <a href="${staticDomain}/article/${articleInfoVO.articleSlug}">${articleInfoVO.title}</a>
                        </span>
            </div>
            <div class="article-metadata">
                        <span class="article-time">
                            <fmt:formatDate value="${articleInfoVO.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </span>
                        <span class="article-category">
                            <a href="${staticDomain}/category/${articleInfoVO.categorySlug}">${articleInfoVO.categoryName}</a>
                        </span>
                <span class="article-view"><i class="icon-eye-open"></i>阅读<span>(425)</span></span>
            </div>
            <div class="article-description">${articleInfoVO.description}</div>
            <div class="article-footer">
                <div class="article-tags">
                    <c:forEach var="tag" items="${articleInfoVO.tags}" varStatus="status">
                        <span class="tag">${tag}</span>
                    </c:forEach>
                </div>
                <div class="read-more">
                    <a href="">继续阅读<i class=" icon-double-angle-right"></i></a>
                </div>
                <div class="clear-fix"></div>
            </div>
        </div>
    </c:forEach>
</div>
<div class="clear-fix"></div>--%>