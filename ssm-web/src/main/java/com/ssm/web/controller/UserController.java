package com.ssm.web.controller;

import com.ssm.bean.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by [Zy]
 * 2016/6/2 13:49
 */
@Controller
@RequestMapping("/user/manager")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/page")
    public String page(ModelMap modelMap) {

        Map<String, Object> param = new HashMap<String, Object>();
//        param.put("address", "北京");

        List<User> users = this.userService.getUserList(param);

        modelMap.put("users", users);

        return "user/list-user";
    }


    @RequestMapping("/update/ui")
    public String updateUI(@RequestParam("uuid") String uuid, ModelMap modelMap) {

        if (uuid != null && !"".equals(uuid.trim())) {
            Map<String, Object> param = new HashMap<String, Object>();
            param.put("uuid", uuid);
            User user = this.userService.getUserById(param);
            modelMap.put("user", user);
        }

        return "user/update-ui";
    }


    @RequestMapping("/update")
    public String update(User user) {

        if (user != null) {
            this.userService.updateUser(user);
        }

        return "redirect:/mvc/user/manager/page";
    }


    @RequestMapping("/delete")
    public String delete(@RequestParam("uuid") String uuid) {

        if (uuid != null && !"".equals(uuid.trim())) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("uuid", uuid);
            this.userService.deleteUser(map);
        }

        return "redirect:/mvc/user/manager/page";
    }

}
