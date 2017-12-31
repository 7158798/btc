package com.zhgtrade.deal.util;

import java.math.BigDecimal;

/**
 * 比特家
 * Double类型计算
 * 精度精确到小数点后6位
 * 超过6位则进行四舍五入
 * CopyRight : www.btc58.cc
 * Author : xxp
 * Date： 2016-04-24 20:03
 */
public class MathUtils {

    public static final int DEFAULT_DECIMALS = 8;

    /**
     * 提供精确加法计算的add方法
     *
     * @param value1 被加数
     * @param value2 加数
     * @return 两个参数的和
     */
    public static double add(double value1, double value2) {
        BigDecimal b1 = new BigDecimal(value1);
        BigDecimal b2 = new BigDecimal(value2);
        return b1.add(b2).setScale(DEFAULT_DECIMALS, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     * 提供精确减法运算的sub方法
     *
     * @param value1 被减数
     * @param value2 减数
     * @return 两个参数的差
     */
    public static double subtract(double value1, double value2) {
        BigDecimal b1 = new BigDecimal(value1 + "");
        BigDecimal b2 = new BigDecimal(value2 + "");
        return b1.subtract(b2).setScale(DEFAULT_DECIMALS, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     * 提供精确乘法运算的mul方法
     *
     * @param value1 被乘数
     * @param value2 乘数
     * @return 两个参数的积
     */
    public static double multiply(double value1, double value2) {
        BigDecimal b1 = new BigDecimal(value1 + "");
        BigDecimal b2 = new BigDecimal(value2 + "");
        return b1.multiply(b2).setScale(DEFAULT_DECIMALS, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    /**
     * 提供精确的除法运算方法div
     *
     * @param value1 被除数
     * @param value2 除数
     * @return 两个参数的商
     * @throws IllegalAccessException
     */
    public static double divide(double value1, double value2) {
        BigDecimal b1 = new BigDecimal(value1 + "");
        BigDecimal b2 = new BigDecimal(value2 + "");
        return b1.divide(b2).setScale(DEFAULT_DECIMALS, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

    public static double convert(double value, int scale){
    	return new BigDecimal(value + "").setScale(scale, BigDecimal.ROUND_HALF_UP).doubleValue();
    }

}
