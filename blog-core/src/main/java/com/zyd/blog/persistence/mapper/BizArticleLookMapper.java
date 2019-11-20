package com.zyd.blog.persistence.mapper;

import com.zyd.blog.business.vo.ArticleLookConditionVO;
import com.zyd.blog.persistence.beans.BizArticleLook;
import com.zyd.blog.plugin.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @website https://www.zhyd.me
 * @version 1.0
 * @date 2018/4/16 16:26
 * @since 1.0
 */
@Repository
public interface BizArticleLookMapper extends BaseMapper<BizArticleLook>{

    /**
     * 分页查询
     * @param vo
     *
     * @return
     */
    List<BizArticleLook> findPageBreakByCondition(ArticleLookConditionVO vo);

    /**
     * 用于防止恶意刷浏览量
     * @param ip
     * @param articleId
     * @return
     * @date  2019/11/20 15:10
     */
    boolean IsOneHours(@Param("id") String ip,@Param("articleId") Long articleId);
}
