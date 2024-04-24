package com.kjq.controller;

import cn.hutool.core.collection.ListUtil;
import cn.hutool.json.JSONUtil;
import com.kjq.POJO.Sort;
import com.kjq.enums.StatusCodeEnum;
import com.kjq.service.SortService;
import com.kjq.utils.FFResult;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestController
public class SortController {

    @Autowired
    SortService sortService;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    private final static String CACHE_SORTS_KEY = "kjq.controller.getsorts";

    /**
     * 查出所有的分类数据
     * @return
     */
    @GetMapping("/getSorts")
    public String getSorts(){
        //先从缓存中取数据，如果没有再查询数据库
        ValueOperations<String, Object> stringObjectValueOperations = redisTemplate.opsForValue();
        List<Sort> redisSorts = (List<Sort>) stringObjectValueOperations.get(CACHE_SORTS_KEY);
        if(!ObjectUtils.isEmpty(redisSorts)){
            return JSONUtil.toJsonStr(FFResult.success(StatusCodeEnum.SUCCESS, redisSorts));
        }
        List<Sort> sorts = (List<Sort>) sortService.getSorts().getData();
        //重新向缓存中设置值，设置一天过期
        stringObjectValueOperations.set(CACHE_SORTS_KEY, sorts, 1, TimeUnit.DAYS);
        return JSONUtil.toJsonStr(FFResult.success(StatusCodeEnum.SUCCESS, sorts));
    }

    /**
     * 根据分页查询分类数据
     * @param page
     * @param limit
     * @return
     */
    @Secured({"ROLE_admin"})
    @GetMapping("/admin/getSorts")
    public String getAdminSorts(@RequestParam("page") Integer page, @RequestParam("limit") Integer limit){
        page -= 1;
        //先从缓存中取数据，如果没有再查询数据库
        ValueOperations<String, Object> stringObjectValueOperations = redisTemplate.opsForValue();
        List<Sort> redisSorts = (List<Sort>) stringObjectValueOperations.get(CACHE_SORTS_KEY);
        if(!ObjectUtils.isEmpty(redisSorts)){
            List<Sort> pageRedisSorts = ListUtil.page(page, limit, redisSorts);
            Sort sort = new Sort();
            sort.setId(redisSorts.size());
            pageRedisSorts.add(sort);
            return JSONUtil.toJsonStr(FFResult.success(StatusCodeEnum.SUCCESS, pageRedisSorts));
        }
        List<Sort> sorts = (List<Sort>) sortService.getSorts().getData();
        //重新向缓存中设置值，设置一天过期
        stringObjectValueOperations.set(CACHE_SORTS_KEY, sorts, 1, TimeUnit.DAYS);
        //获取分页数据
        List<Sort> pageSorts = ListUtil.page(page, limit, sorts);
        Sort sort = new Sort();
        sort.setId(sorts.size());
        pageSorts.add(sort);
        return JSONUtil.toJsonStr(FFResult.success(StatusCodeEnum.SUCCESS, pageSorts));
    }

    /**
     * 添加分类
     * @param sort
     * @return
     */
    @Secured({"ROLE_admin"})
    @PostMapping("/admin/sort")
    public String addAdminSort(@RequestBody Sort sort){
        return JSONUtil.toJsonStr(sortService.addAdminSort(sort));
    }

    /**
     * 修改分类
     * @param sort
     * @return
     */
    @Secured({"ROLE_admin"})
    @PutMapping("/admin/sort")
    public String updateAdminSort(@RequestBody Sort sort){
        return JSONUtil.toJsonStr(sortService.updateAdminSort(sort));
    }

    /**
     * 删除分类信息
     * @param id
     * @return
     */
    @Secured({"ROLE_admin"})
    @DeleteMapping("/admin/sort/{id}")
    public String deleteAdminSort(@PathVariable Integer id){
        return JSONUtil.toJsonStr(sortService.deleteAdminSort(id));
    }
}
