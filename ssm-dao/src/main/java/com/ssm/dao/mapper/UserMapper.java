package com.ssm.dao.mapper;

import com.ssm.bean.User;

import java.util.List;
import java.util.Map;

/**
 * Created by [Zy]
 * 2016/6/5 21:50
 */
public interface UserMapper {

    void saveUser(User user);

    void deleteUser(User user);

    void updateUser(User user);

    List<User> getUserList(Map<String, Object> param);

    User getUserById(String uuid);

}
