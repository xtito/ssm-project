package com.ssm.service;

import com.ssm.bean.User;

import java.util.List;
import java.util.Map;

/**
 * Created by [Zy]
 * 2016/6/5 21:52
 */

public interface UserService {

    void saveUser(User user);

    void deleteUser(Map<String, Object> map);

    void updateUser(User user);

    List<User> getUserList(Map<String, Object> param);

    User getUserById(Map<String, Object> param);

}
