<#include "include/macros.ftl">
<@compress single_line=false>
    <@header title="${config.siteName!} | 一个程序员的个人博客"
    keywords="${config.homeKeywords!}"
    description="${config.homeDesc!}"
    canonical="/${url!}">
    </@header>

    <div class="container custome-container">
        <@prompt></@prompt>
        <nav class="breadcrumb">
            <div class="notify"><i class="fa fa-bullhorn fa-fw"></i></div>
            <div id="scrolldiv">
                <div class="scrolltext">
                    <ul class="list-unstyled" id="notice-box">
                        <li class="scrolltext-title">
                            <a href="javascript:void(0)" rel="bookmark">本站正式启用新域名:<a href="https:/www.jxhxblog.com"
                                                                                     target="_blank"><strong>https:/www.jxhxblog.com</strong></a></a>
                        </li>
                        <li class="scrolltext-title">
                            <a href="javascript:void(0)" rel="bookmark">自信,自爱,自立,自强,自律,自尊。</a>
                        </li>
                        <li class="scrolltext-title">
                            <a href="javascript:void(0)" rel="bookmark">有一种缘，放手后成为风景。有一颗心，坚持中方显真诚。</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="col-sm-8 blog-main">
                <#if page.list?? && (page.list?size > 0)>
                    <#list page.list as item>
                        <article class="fade-in">
                            <div id="article-card">
                                <div class="article-card-wrap">
                        <div class="article-cover"
                             style="background-image: url('${item.coverImage}')">
                            <div class="article-title">
                                <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark"
                                   data-toggle="tooltip" data-placement="bottom">${item.title}</a>
                            </div>
                        </div>
                        <div class="article-info">
                            <i class="fa fa-calendar-o fa-fw"></i>
                            发表于 ${item.createTime?string('yyyy年MM月dd日')} •
                            <i class="fa fa-eye fa-fw"></i>
                            ${item.lookCount!(0)}次围观 •
                            <i class="fa fa-comments-o fa-fw"></i>评论(${item.commentCount!(0)})
                        </div>
                        <div class="article-sub-message">
                            ${item.description!}
                        </div>
                        <div class="tags">
                            <#list item.tags as tag>
                                <div class="tag">
                                    <a href="${config.siteUrl}/tag/${tag.id}">
                                        ${tag.name}
                                    </a>
                                </div>
                            </#list>
                        </div>
                        <div class="read-more"><a href="${config.siteUrl}/article/${item.id?c}">阅读全文 >></a>
                        </div>
                    <#--  <div class="entry-content">
                          <div class="archive-content">
                              ${item.description!}
                          </div>
                          <span class="entry-meta">
                          <span class="date" title="文章发表日期" data-toggle="tooltip" data-placement="bottom"><i
                                      class="fa fa-clock-o fa-fw"></i>${item.createTime?string('yyyy-MM-dd')}</span>
                          <span class="views" title="文章阅读次数" data-toggle="tooltip"
                                data-placement="bottom"><i
                                      class="fa fa-eye fa-fw"></i>浏览(${item.lookCount!(0)})</span>
                          <span class="comment" title="文章评论次数11" data-toggle="tooltip"
                                data-placement="bottom">
                              <a href="${config.siteUrl}/article/${item.id?c}#comment-box"
                                 rel="external nofollow">
                                  <i class="fa fa-comments-o fa-fw"></i>评论(${item.commentCount!(0)})
                              </a>
                          </span>
                          </span>
                              <div class="clear"></div>
                              <span class="entry-more">
                              <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark" title="点击查看文章详情"
                                 data-toggle="tooltip" data-placement="bottom">阅读全文 >></a>
                          </span>
                      </div>-->
                                </div>
                            </div>
                        </article>
                    </#list>
                    <@pageBar></@pageBar>
                <#else >
                    <article class="fade-in" style="height: auto">
                        <div class="rows">
                            <div class="col-md-10 col-sm-12">
                                <div class="h3 text-center">没有找到文章~</div>
                                <div class="h5 text-center">请刷新重试</div>
                            </div>
                            <div class="col-md-2 col-sm-12">
                            <#--<img src="${config.staticWebSite}/img/wrong.gif" class="center-block" alt="惩罚我"
                                     style="width: 110px;margin-top: -10px;">-->
                            </div>
                        </div>
                        <form action="/" method="post" class="form-horizontal searchForm">
                            <input type="hidden" name="pageNumber" value="1">
                            <div class="input-group" style="float:left">
                                <input type="text" class="form-control br-none" name="keywords"
                                       placeholder="请刷新重试">
                                <span class="input-group-btn">
                                <button class="btn btn-default br-none nav-search-btn pointer" type="submit"><i
                                        class="fa fa-search"></i> 搜索</button>
                            </span>
                            </div>
                            <div class="clear" style="margin-bottom: 10px"></div>
                        <#--  <ul class="list-unstyled list-inline search-hot">
                              <li><strong style="position: relative;top: 2px;color: #999999;">热门搜索：</strong></li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-default">Java</span></a>
                              </li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-primary">Springboot</span></a></li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-success">Linux</span></a></li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-info">Maven</span></a></li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-warning">Bootstrap</span></a></li>
                              <li><a class="pointer" rel="external nofollow"><span
                                              class="label label-danger">阿里云</span></a></li>
                          </ul>-->
                        </form>
                    </article>
                </#if>
            </div>
            <#include "layout/sidebar.ftl"/>
        </div>
    </div>

    <@footer></@footer>
</@compress>
