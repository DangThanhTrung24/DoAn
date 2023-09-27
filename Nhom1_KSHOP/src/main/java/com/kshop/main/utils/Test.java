package com.kshop.main.utils;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public class Test {
    public static void main(String[] agrs) {
        Locale lc = new Locale("nv","VN");
        NumberFormat nf = NumberFormat.getInstance(lc);
        System.out.println(nf.format(123456));
    }
}
