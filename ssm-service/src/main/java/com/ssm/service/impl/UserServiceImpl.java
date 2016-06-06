package com.ssm.service.impl;

import com.ssm.bean.User;
import com.ssm.dao.mapper.UserMapper;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by [Zy]
 * 2016/6/6 20:51
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper mapper;

    @Override
    public void saveUser(User user) {
        this.mapper.saveUser(user);
    }

    @Override
    public void deleteUser(User user) {
        this.mapper.deleteUser(user);
    }

    @Override
    public void updateUser(User user) {
        this.mapper.updateUser(user);
    }

    @Override
    public List<User> getUserList(Map<String, Object> param) {
        return this.mapper.getUserList(param);
    }

    @Override
    public User getUserById(String uuid) {
        return this.mapper.getUserById(uuid);
    }
}
