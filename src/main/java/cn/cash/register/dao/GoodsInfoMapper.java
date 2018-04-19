package cn.cash.register.dao;

import java.util.List;

import cn.cash.register.common.request.PageInfoQueryRequest;
import cn.cash.register.dao.domain.GoodsInfo;

public interface GoodsInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(GoodsInfo record);

    int insertSelective(GoodsInfo record);

    GoodsInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(GoodsInfo record);

    int updateByPrimaryKey(GoodsInfo record);

    List<GoodsInfo> list(PageInfoQueryRequest request);
}