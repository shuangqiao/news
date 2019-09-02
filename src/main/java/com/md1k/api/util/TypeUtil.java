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
    /**
     * 店铺状态：1、新建立 2、启用  3、关闭 4、软删除
     */
    public static class VENDOR_STATUS {
        public static Byte NEW = 1;
        public static Byte ON = 2;
        public static Byte OFF = 3;
        public static Byte DELETE = 4;
    }
}
