package com.kjq.service.impl;

import cn.hutool.core.date.DateUtil;
import com.kjq.POJO.Sort;
import com.kjq.enums.StatusCodeEnum;
import com.kjq.mapper.SortMapper;
import com.kjq.service.SortService;
import com.kjq.utils.FFResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SortServiceImpl implements SortService {

    @Autowired
    SortMapper sortMapper;

    @Override
    public FFResult getSorts() {
        List<Sort> sorts = sortMapper.getSorts();
        return FFResult.success(StatusCodeEnum.SUCCESS, sorts);
    }

    @Override
    public FFResult addAdminSort(Sort sort) {
        sort.setCreateTime(DateUtil.formatDate(DateUtil.date()));
        sort.setSortStatus(1);
        if(sortMapper.addAdminSort(sort)){
            return FFResult.success(StatusCodeEnum.SUCCESS, sort);
        }
        return FFResult.error(StatusCodeEnum.ERROR);
    }

    @Override
    public FFResult updateAdminSort(Sort sort) {
        if(sortMapper.updateAdminSort(sort)){
            return FFResult.success(StatusCodeEnum.SUCCESS);
        }
        return FFResult.error(StatusCodeEnum.ERROR);
    }

    @Override
    public FFResult deleteAdminSort(Integer id) {
        if(sortMapper.deleteAdminSort(id)){
            return FFResult.success(StatusCodeEnum.SUCCESS);
        }
        return FFResult.error(StatusCodeEnum.ERROR);
    }
}
