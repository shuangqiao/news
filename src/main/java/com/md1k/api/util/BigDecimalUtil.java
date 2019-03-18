package com.md1k.api.util;

import java.math.BigDecimal;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2018/7/13  14:42
 * Descript: BigDecimal数据类型加减乘除的运算工具类
 */
public class BigDecimalUtil {

    private static final int DEF_DIV_SCALE = 10;
    /**
     * 返回b1 加 b2 的结果
     * @param b1
     * @param b2
     * @return
     */
    public static BigDecimal add(BigDecimal b1,BigDecimal b2){
        BigDecimal bigDecimal = BigDecimal.valueOf(b1.add(b2).doubleValue());
        return bigDecimal;
    }

    /**
     * 返回b1减去b2的结果
     * @param b1
     * @param b2
     * @return
     */
    public static BigDecimal sub(BigDecimal b1,BigDecimal b2){
        BigDecimal bigDecimal = BigDecimal.valueOf(b1.subtract(b2).doubleValue());
        return bigDecimal;
    }

    /**
     * 返回b1除以b2的结果
     * @param b1
     * @param b2
     * @return
     */
    public static BigDecimal div(BigDecimal b1,BigDecimal b2){
        BigDecimal bigDecimal = BigDecimal.valueOf(div(b1,b2,DEF_DIV_SCALE));
        return bigDecimal;
    }

    /**
     * 返回 b1 乘以 b2的结果
     * @param b1
     * @param b2
     * @return
     */
    public static BigDecimal mul(BigDecimal b1,BigDecimal b2){
        BigDecimal bigDecimal = BigDecimal.valueOf(b1.multiply(b2).doubleValue());
        return bigDecimal;
    }


    public static double div(BigDecimal b1,BigDecimal b2,int scale){
        if(scale<0){
            throw new IllegalArgumentException(
                    "The scale must be a positive integer or zero");
        }
        return b1.divide(b2,scale,BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     *  a 大于等于 b 就是true，小于是false
     * @param a
     * @param b
     * @return
     */
    public static boolean compareAtoB(BigDecimal a,BigDecimal b){
        if(a.compareTo(b) == -1){
            return false;
        }else if(a.compareTo(b) == 0 || a.compareTo(b) == 1){
            return true;
        }else {
            return false;
        }
    }
}
