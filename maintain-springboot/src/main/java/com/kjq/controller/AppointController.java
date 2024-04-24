package com.kjq.controller;

import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.kjq.service.AppointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
public class AppointController {

    @Autowired
    AppointService appointService;

    /**
     * 查询预约成功后的列表
     * @param page
     * @param num
     * @param name
     * @param city
     * @param skill
     * @param time
     * @return
     */
    @Secured({"ROLE_user"})
    @GetMapping("/getAppoints")
    public String getAppoints(
            @RequestParam("page") Integer page,
            @RequestParam("num") Integer num,
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "city", required = false) String city,
            @RequestParam(value = "skill", required = false) String skill,
            @RequestParam(value = "time", required = false) String time
    ){
        return JSONUtil.toJsonStr(appointService.getAppoints(page, num, name, city, skill, time));
    }

    /**
     * 修改预约信息
     * @param newAppoint
     * @return
     */
    @PutMapping("/updateStatus")
    public String updateStatus(@RequestBody Map<String, String> newAppoint){
        return JSONUtil.toJsonStr(appointService.updateStatus(newAppoint));
    }

    /**
     * 获取预约的总页数
     * @param status
     * @return
     */
    @GetMapping("/getTotal")
    public String getTotal(@RequestParam("status") Integer status){
        return JSONUtil.toJsonStr(appointService.getTotal(status));
    }

    /**
     * 根据分页获取数据
     * @param page
     * @param num
     * @param status
     * @return
     */
    @GetMapping("/getStatusAppoint")
    public String getStatusAppoint(
            @RequestParam("page") Integer page,
            @RequestParam("num") Integer num,
            @RequestParam("status") Integer status
    ){
        return JSONUtil.toJsonStr(appointService.getListAppoint(page, num, status));
    }

    /**
     * 取消预约
     * @param jsonObject
     * @return
     */
    @PutMapping("/cancelAppoint")
    public String cancelAppoint(@RequestBody JSONObject jsonObject){
        Integer id = jsonObject.getInt("id");
        return JSONUtil.toJsonStr(appointService.cancelAppoint(id));
    }

    /**
     * 用户确认价格
     * @param jsonObject
     * @return
     */
    @PutMapping("/tPrice")
    public String tPrice(@RequestBody JSONObject jsonObject){
        Integer id = jsonObject.getInt("id");
        return JSONUtil.toJsonStr(appointService.tPrice(id));
    }

    /**
     * 用户进行评分操作
     * @param jsonObject
     * @return
     */
    @PostMapping("/mark")
    public String mark(@RequestBody JSONObject jsonObject){
        Integer id = jsonObject.getInt("id");
        Integer rate = jsonObject.getInt("rate");
        return JSONUtil.toJsonStr(appointService.mark(id, rate));
    }

    /**
     * 维修师查询自己的预约信息
     * @param status
     * @param page
     * @param limit
     * @param title
     * @return
     */
    @Secured({"ROLE_maintain"})
    @GetMapping("/maintain/getAppoints")
    public String getAppoints(
            @RequestParam("status") Integer status,
            @RequestParam("page") Integer page,
            @RequestParam("limit") Integer limit,
            @RequestParam(value = "title", required = false) String title
    ){
        return JSONUtil.toJsonStr(appointService.getMaintainAppoints(status, page, limit, title));
    }

    /**
     * 删除预约信息
     * @param id
     * @return
     */
    @Secured({"ROLE_maintain"})
    @DeleteMapping("/maintain/appoint")
    public String deleteAppoint(@RequestParam Integer id){
        return JSONUtil.toJsonStr(appointService.deleteAppoint(id));
    }

    /**
     * 修改预约数据
     */
    @Secured({"ROLE_maintain"})
    @PutMapping("/maintain/appoint")
    public String updateAppoint(@RequestParam String content, @RequestParam String appointTime, @RequestParam Integer id){
        return JSONUtil.toJsonStr(appointService.updateAppoint(content, appointTime, id));
    }

    /**
     * 添加预约数据
     * @param content
     * @param appointTime
     * @return
     */
    @Secured({"ROLE_maintain"})
    @PostMapping("/maintain/appoint")
    public String addAppoint(@RequestParam String content, @RequestParam String appointTime){
        return JSONUtil.toJsonStr(appointService.addAppoint(content, appointTime));
    }

    /**
     * 添加价格
     * @param price
     * @param id
     * @return
     */
    @Secured({"ROLE_maintain"})
    @PutMapping("/maintain/addPrice")
    public String addPrice(@RequestParam Integer price, @RequestParam Integer id){
        return JSONUtil.toJsonStr(appointService.addPrice(id, price));
    }

    /**
     * 提交预约信息
     * @param id
     * @return
     */
    @Secured({"ROLE_maintain"})
    @PutMapping("/maintain/subAppoint")
    public String subAppoint(@RequestParam Integer id){
        return JSONUtil.toJsonStr(appointService.subAppoint(id));
    }
}
