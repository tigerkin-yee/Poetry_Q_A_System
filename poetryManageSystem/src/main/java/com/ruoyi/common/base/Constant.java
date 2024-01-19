package com.ruoyi.common.base;

/**
 * 常量类
 *
 * @author gltqe
 * @date 2022/7/2 23:44
 **/
public class Constant {

    public static final Integer N = 0;

    public static final Integer Y = 1;

    /**
     * 验证码 key
     */
    public static final String CAPTCHA_KEY = "captchaKey:";

    /**
     * 过期时间key
     */
    public static final String EXPIRE_TIME_KEY = "expire_time";

    /**********************    token类型      ****************************/
    /**
     * token类型key
     */
    public static final String TOKEN_TYPE_KEY = "token_type";
    /**
     * 访问令牌
     */
    public static final Integer TOKEN_TYPE_ACCESS = 0;

    /**
     * 刷新令牌
     */
    public static final Integer TOKEN_TYPE_REFRESH = 1;
    /**********************    token类型      ****************************/


    /**********************    前端获取字典类型      ****************************/
    /**
     * list
     */
    public static final Integer DICT_LIST = 0;
    /**
     * map
     */
    public static final Integer DICT_MAP = 1;

    /**
     * list map
     */
    public static final Integer DICT_LIST_MAP = 2;
    /**********************    token类型      ****************************/


    /**********************    响应码      ****************************/
    /**
     * 正常响应
     */
    public static final Integer CODE_200 = 200;

    /**
     * 认证
     */
    public static final Integer CODE_401 = 401;

    /**
     * 授权
     */
    public static final Integer CODE_403 = 403;

    /**
     * 服务器异常
     */
    public static final Integer CODE_500 = 500;

    /**
     * token错误
     */
    public static final Integer CODE_1000 = 1000;

    /**
     * token过期
     */
    public static final Integer CODE_1001 = 1001;

    public static final String MSG_200 = "操作成功!";
    public static final String MSG_500 = "操作失败!";
    /**********************    响应码      ****************************/

    /**
     * null
     */
    public static final String NULL = "null";

    /**
     * undefined
     */
    public static final String UNDEFINED = "undefined";

    /**
     * 部门最高级父ID
     */
    public static final String DEPT_HIGHEST = "0";

    /**
     * admin 用户名
     */
    public static final String ADMIN = "admin";

    /**
     * 管理员权限
     */
    public static final String ADMIN_PERMISSION = "*:*:*";

    /**
     * 请求头携带token的key
     */
    public static final String TOKEN_HEAD = "x-token";

    /**
     * LoginUser存储在redis中的key
     */
    public static final String LOGIN_USER_KEY = "loginUser:";

    /**
     * Config key  配置key
     */
    public static final String CONFIG_KEY = "sysConfig:";

    /**
     * Dict key  字典key
     */
    public static final String DICT_KEY = "sysDict:";
    /********************接口配置**********************/
    /**
     * Interface key  接口配置key
     */
    public static final String INTERFACE_KEY = "sysInterface:";

    /**
     * Interface key  接口配置key(单用户)
     */
    public static final String INTERFACE_SINGLE_KEY = "sysInterface:single:";
    /**
     * Interface key  接口配置key(全部用户)
     */
    public static final String INTERFACE_WHOLE_KEY = "sysInterface:whole:";
    /**
     * Interface key  接口配置key(全部用户) 保存时间的list的key
     */
    public static final String INTERFACE_WHOLE_LIMITER_KEY = "sysInterface:whole:limiter:";
    /**
     * Interface redis 返回code -1 接口超过单个用户访问限制
     */
    public static final Integer LIMIT_SINGLE_EXCEED = -1;

    /**
     * Interface redis 返回code -1 接口超过限制
     */
    public static final Integer LIMIT_WHOLE_EXCEED = -2;

    /**
     * 接口limit在redis中默认超时时间
     */
    public static final Long LIMIT_DEFAULT_TIME_OUT_SECOND = 10L;

    /**
     * 单用户默认访问频率
     */
    public static final String LIMIT_DEFAULT_SINGLE = "1";

    /**
     * 全部用户默认访问频率
     */
    public static final String LIMIT_DEFAULT_WHOLE = "100";

    /**
     * 全部用户默认访问频率
     */
    public static final String LIMIT_LOWEST_RATE = "0.00000001";

    /**
     * 令牌创建速度保留位数
     **/
    public final static Integer LIMITER_SCALE = 8;
    /**
     * limit key  接口限制key
     */
    public static final String LIMIT_KEY = "limit:";
    /********************数据权限**********************/
    /**
     * 本人
     */
    public static final Integer SELF = 0;
    /**
     * 全部
     */
    public static final Integer ALL = 1;
    /**
     * 本部门
     */
    public static final Integer DEPT = 2;
    /**
     * 本部门及以下
     */
    public static final Integer DEPT_DOWN = 3;
    /**
     * 自定义
     */
    public static final Integer CUSTOM = 4;

    /********************数据权限**********************/

    /********************定时任务**********************/

    /********************定时任务**********************/


    /**
     * 任务调度参数key
     */
    public static final String JOB_PARAM_KEY ="JOB_PARAM_KEY";

    /**
     * 0 不做处理
     */
    public static final Integer MISFIRE_DO_NOTHING = 0;

    /**
     * 1 忽略本次
     */
    public static final Integer MISFIRE_IGNORE_THIS = 1;

    /**
     * 2 立即执行
     */
    public static final Integer MISFIRE_FIRE_NOW = 2;

    /********************正则表达式**********************/
    /**
     * 密码 必须包含 大小写字母和数字 且 长度在8-16之间
     */
    public static final String REGEXP_PASSWORD = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$";

    /********************正则表达式**********************/

    /********************文件大小限制**********************/
    /**
     * 头像  2M
     */
    public static final Long AVATAR_SIZE = 2097152L;
    /**
     * pdf  10M
     */
    public static final Long PDF_SIZE = 10485760L;
    /********************文件大小限制**********************/

    /********************Office操作类型**********************/
    public static final String MERGE_PDF = "0";
    public static final String SPLIT_PDF = "1";
}
