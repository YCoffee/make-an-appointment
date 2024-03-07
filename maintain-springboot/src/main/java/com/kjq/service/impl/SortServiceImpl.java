package com.kjq.service.impl;

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
    public FFResult getAdminSorts(Integer page, Integer limit) {
        page = (page - 1) * limit;
        return FFResult.success(StatusCodeEnum.SUCCESS, sortMapper.getAdminSorts(page, limit));
    }

    @Override
    public FFResult getSortList() {

        return FFResult.success(StatusCodeEnum.SUCCESS, sortMapper.getSortList());
    }
}
