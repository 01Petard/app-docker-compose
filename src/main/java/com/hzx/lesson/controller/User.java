package com.hzx.lesson.controller;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * Users
 * @author hzx
 * @since 2025-05-04 16:58:30
 */
@Data
@TableName("users")
public class User {
    private Long id;
    private String name;
    private String phone;
    private String password;
}