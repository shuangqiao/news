package com.md1k.api.util;

import javax.print.DocFlavor;
import java.math.BigDecimal;
import java.text.DecimalFormat;
/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2018/7/31  17:07
 * Descript:商品和订单的枚举工具类
 */
public class TypeUtil {
    public static Integer NATIONAL=0;//全国

    //商品类型
    public static class GOODS_TYPE {
        public final static Byte VIP_TYPE = 1;
        public final static Byte CARD_TYPE = 2;
        public final static Byte GROUP_TYPE = 3;
        public final static Byte SET_TYPE = 4;
    }

    //商品状态
    public static class GOODS_STATUS {
        public final static Byte EFFECT_STATUS = 1;
        public final static Byte INVALID_STATUS = 2;
        public final static Byte DELETE_STATUS = 3;
    }

    //订单类型
    public static class ORDER_TYPE {
        public final static Byte VIP_TYPE = 1;
        public final static Byte CARD_TYPE = 2;
        public final static Byte CONSUME_TYPE = 3;
        public final static Byte GROUP_TYPE = 4;
        public final static Byte SET_TYPE = 5;
        public final static Byte FLASH_TYPE = 6;//限时抢购
        public final static Byte DISCOUNT_TYPE = 7;//店铺活动
        public final static Byte COMMON_TYPE = 8;//普通商品
    }

    //订单来源，APP,小程序，商城
    public static class ORDER_SOURCE {
        public final static Byte APP = 1;
        public final static Byte APPLET = 2;
        public final static Byte MALL = 3;
    }

    //订单状态
    public static class ORDER_STATUS {
        public final static Byte PREPAY_STATUS = 1;
        public final static Byte PAID_STATUS = 2;
        public final static Byte CANCEL_STATUS = 3;
        public final static Byte PAYING_STATUS = 4;
        public final static Byte REFUND_STATUS = 5;
    }

    //待评价订单类型
    public static class ORDER_PAID_TYPE {
        public final static Byte VENDOR_TYPE = 3;
        public final static Byte GROUP_TYPE = 4;
        public final static Byte SET_TYPE = 5;
        public final static Byte FLASH_TYPE = 6;//限时抢购
        public final static Byte DISCOUNT_TYPE = 7;//店铺活动
    }

    //待评价订单使用和评价状态
    public static class ORDER_PAID_STATUS {
        public final static Byte UN_USE_STATUS = 0;
        public final static Byte USED_STATUS = 1;
        public final static Byte EXPIRED = 2;
        public final static Byte UN_REVIEW_STATUS = 0;
        public final static Byte REVIEWED_STATUS = 1;
    }

    //待评价订单类型
    public static class REVIEW_TYPE {
        public final static Byte VENDOR_TYPE = 3;
        public final static Byte GROUP_TYPE = 4;
        public final static Byte SET_TYPE = 5;
    }

    //优得劵
    public static class UDER_VOUCHER {
        public final static Byte GROUP_TYPE = 4;
        public final static Byte SET_TYPE = 5;
        public final static Byte CHARGE_OFF_NO = 0;
        public final static Byte CHARGE_OFF_YES = 1;
    }

    public static class UDER_VOUCHER_STATUS{
        public final static Byte UN_USED = 1;
        public final static Byte USED = 2;
        public final static Byte CANCELED = 3;
        public final static Byte INVALID = 4;
        public final static Byte LOCKED = 5;
    }

    //退款状态
    public static class REFUND_STATUS {
        public final static Byte UN_REFUND = 0;
        public final static Byte APPLY = 1;
        public final static Byte COMPLETE = 2;
    }

    //活动名字
    public static class ACTIVITY_NAME {
        public static String GROUP = "团餐送积分";
        public static String SET_MEAL = "套餐送积分";
        public static String BY_ORDER = "买单送积分";
        public static String FLASH = "限时抢购送积分";
        public static String VENDOR_DISCOUNT = "店铺活动送积分";
    }

    //短信发送状态
    public static class SMS_STATUS {
        public final static Byte SEND = 1;
        public final static Byte NO_SEND = 0;
        public final static Byte VALID = 1;
        public final static Byte NO_VALID = 0;
    }

    //支付类型，阿里，微信APP，微信小程序
    public static class PAY_TYPE {
        public final static Integer ALI = 1;
        public final static Integer WECHAT_APP = 2;
        public final static Integer WECHAT_APPLET = 3;
    }

    //城市ID
    public static class CITY_ID {
        public final static Integer ZHENG_ZHOU = 224;
        public final static Integer XI_AN = 225;
        public final static Integer HE_FEI = 226;
    }

    //md1k_record_view status
    public static class RECORD_VIEW_STATUS {
        public final static Byte ONLINE_STATUS = 1;
        public final static Byte OFFLINE_STATUS = 2;
        public final static Byte DELETE_STATUS = 3;
    }



    //默认经纬度深圳
    public static class DEFAULT_LA_LO {

        public final static BigDecimal LA = new BigDecimal("22.53901657788418");
        public final static BigDecimal LO = new BigDecimal("113.93694993069373");

    }

    //商品活动表的活动类型
    public static class MARKET_GOODS_TYPE {

        public static final Byte ACTIVITY_TYPE_NO = 0;
        public static final Byte ACTIVITY_TYPE_FLASH = 1;
        //每周推荐
        public static final Integer ACTIVITY_TYPE_RECOMMEND_WEEK = 3;
        //热门推荐
        public static final Integer ACTIVITY_TYPE_RECOMMEND_TOP = 4;
    }

    //商品活动表的活动状态
    public static class MARKET_GOODS_STATUS {
        public static final Byte ACTIVITY_TYPE_OFF = 0;
        public static final Byte ACTIVITY_TYPE_ON = 1;
    }

    //商家代金券
    public static class VENDOR_VOUCHER_STATUS {
        public static final byte STATUS_IN = 0;//待送出
        public static final byte STATUS_OUT = 1;//送出
    }
    //活动项目管理
    public static class MARKETING_ACTIVITIES{
        public static final Integer ACTIVITY_ID=92;//商家代金券的活动id
        public static final Integer ACTIVE_NUMBER=-1;//商家代金券的活动编号,目前先写死，后面会加字段

    }

    public static class SYSCFG_KEY{
        public static final String COMMISSION_KEY = "commission_percent";
        public static final String UDEFEE_KEY = "udefee";
        public static final String UDEFEE_CFG = "udefee_cfg";
        public static final String COMMISSION_CFG = "commission_cfg";

        public static final String COMMISSION_KEY_ORIGIN = "commission_percent_origin";
        public static final String COMMISSION_CFG_ORIGIN = "commission_cfg_origin";
    }

    //活动商品主题分类管理的状态
    public static class ACTIVITY_THEME_STATUS {
        public static final Byte STATUS_OFF = 0;//关闭
        public static final Byte STATUS_ON = 1;//开启
        public static final String TYPE_THREE_DISCOUNT = new String("2");//活动主题类型:2是全场三折'
    }

    //分类页面的美食,特色,套餐 add by hzz on 2018/10/18
    public static class CATEGORY_TYPE {
        public final static Integer CATEGORY_TYPE_FOODS = 0;//美食
        public final static Integer CATEGORY_TYPE_FEATURESFOODS = 3;//特色
        public final static Integer CATEGORY_TYPE_SETMEAL = 4;//套餐

    }
    /** 商家入入驻申请表的状态*/
    public static class MD1K_VENDOR_APPLY_STATUS{
        public static final Byte REVIEW_IN = 0;//关闭
        public static final Byte REVIEW_SUCCESS= 1;//成功
        public static final Byte REVIEW_FAIL = 2;//失败
    }

    /**
     * 商家入驻申请时图片归类
     */
    public static class MD1K_VENDOR_APPLY_IMAGE_CLASS {
        public static String LICENSE_HEALTH_CLASS = "LICENSE_HEALTH";//卫生许可证
        public static String LICENSE_OPERATE_CLASS = "LICENSE_OPERATE"; //'经营许可证
        public static String IDCARD_REBEL_CLASS = "IDCARD_REBEL";//`身份证反面照
        public static String IDCARD_FRONT_CLASS = "IDCARD_FRONT";// 身份证正面照
        public static String GATE_CLASS = "GATE";//'门口照片,
        public static String LICENSE_BUSINESS_CLASS = "LICENSE_BUSINESS";//营业执照
    }
    /**
     *分类代码  1,门户图片; 2,店铺特色图片; 3,团餐图; 4,套餐图;5,环境图;6,兑换10元代金券;7,兑换30元代金券;8,兑换30和50元代金券
     */
    public static class IMAGES_FN_CODE{
        public static final String GATE = "1";
        public static final String VENDOR_SPECIAL = "2";
        public static final String GROUP = "3";
        public static final String SET = "4";
        public static final String ENVIRONMEND = "5";
        public static final String CARD_10 = "6";
        public static final String CARD_30 = "7";
        public static final String CARD_30_50 = "8";
        public static final String VENDOR_RECOMMEND= "9";
    }

    /**
     * 活动开关参数
     */
    public static class ACTIVITY_STATUS_CONFIG{
        public static Integer OFF = 0;
        public static Integer ON = 1;
        public static Integer IS_LIMIT = 1;
        public static Integer UN_LIMIT = 0;
    }

    /**
     * 评论字数限制
     */
    public static class REVIEW_PARAM{
        public static Integer CONTENT_LIMIT = 100;
    }

    /**
     * 是否允许退款
     */
    public static class REFUND_LIMIT{
        public static Byte REFUND_ALLOW = 1;//允许
        public static Byte REFUND_NOT_ALLOW = 0;//允许
    }

    /**
     * 商品活动类型
     */
    public static class ACTIVITY_TYPE{
        public static Byte FLASH = 1;//限时抢购
        public static Byte VENDOR_DISCOUNT = 2;//店铺活动
    }

    //商品订单明细类型
    public static class BILL_DETAIL{
        public static Byte T0 = 0;
        public static Byte VIP = 1;
        public static Byte VOUCHER = 2;
        public static Byte CASH = 3;
        public static Byte UNDISCOUNT = 4;
        public static Byte VENDORDISCOUNT = 5;
        public static Byte GOODS = 6;
        public static Byte REWARD = 7;
    }

    //活动商品是否限购
    public static class ACTIVITY_LIMIT{
        public static Byte IS_LIMIT = 1;
        public static Byte NO_LIMIT = 0;
    }

    //活动类型
    public static class MARKET_ACTIVITY_TYPE{
        public static Integer FLASH = 8;
        public static Integer DISCOUNT = 9;
    }
    //分页条数
    public static Integer PAGESIZE = 10;

    /**
     *名字长度最大长度
     */
    public  static Integer NAME_MAX_SIZE=20;

    /**
     * 电话号码的长度
     */
    public static Integer PHONE_MAX_SIZE = 11;

    /**
     * 外地地址的最大长度
     */
    public  static Integer OUT_FODD_ADDR_MAX_SIZE = 200;

    /**
     * 性别
     */
    public static class SEX{
        public static Byte SEX_MALE =  0;
        public static Byte SEX_FEMALE = 1;
    }
    /**
     * 是否是外卖默认地址
     */
    public static class OUT_FOOD_ADDR_DEFULT{
        public static Byte DEFULT_NO = 0;
        public static Byte DEFULT_YES = 1;
    }
    /**
     * 外卖地址的状态
     */
    public static class OUT_FOOD_ADDR_ADDR{
        public static Byte ADDR_NO = 0;
        public static Byte ADDR_YES = 1;
    }

    /**
     * 店铺状态：1、新建立 2、启用  3、关闭 4、软删除
     */
    public static class VENDOR_STATUS{
        public static Byte NEW = 1;
        public static Byte ON = 2;
        public static Byte OFF = 3;
        public static Byte DELETE = 4;
    }
}
