package com.hzx.lesson.controller;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * UserMapper
 * @author hzx
 * @since 2025-05-04 17:02:06
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {
    // 继承 BaseMapper 即可，默认提供 CRUD 方法
}
