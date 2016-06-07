package com.ssm.dao.mapper;

import com.ssm.bean.User;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by [Zy]
 * 2016/6/5 21:50
 */
@Repository
public interface UserMapper {

    void saveUser(User user);

    void deleteUser(Map<String, Object> param);

    void updateUser(User user);

    List<User> getUserList(Map<String, Object> param);

    User getUserById(Map<String, Object> param);

}
