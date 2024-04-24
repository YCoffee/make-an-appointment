package com.kjq.job;

import com.kjq.controller.SortController;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 开启启动加载缓存到redis中
 */
@Component
public class CachePreheatingLoader implements CommandLineRunner {

    @Resource
    private SortController sortController;

    @Override
    public void run(String... args){
        //开启进行缓存预热
        sortController.getSorts();
    }
}
