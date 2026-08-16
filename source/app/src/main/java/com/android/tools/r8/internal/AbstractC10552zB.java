package com.android.tools.r8.internal;

public abstract class AbstractC10552zB {
    public static boolean a(int i10) {
        if (65 <= i10 && i10 <= 90) {
            return true;
        }
        if (97 <= i10 && i10 <= 122) {
            return true;
        }
        if ((48 <= i10 && i10 <= 57) || i10 == 36 || i10 == 45 || i10 == 95) {
            return true;
        }
        if (161 <= i10 && i10 <= 8191) {
            return true;
        }
        if (8208 <= i10 && i10 <= 8231) {
            return true;
        }
        if (8240 <= i10 && i10 <= 55295) {
            return true;
        }
        if (57344 <= i10 && i10 < 65279) {
            return true;
        }
        if (65279 >= i10 || i10 > 65519) {
            return 65536 <= i10 && i10 <= 1114111;
        }
        return true;
    }

    public static boolean b(int i10) {
        if (i10 == 32 || i10 == 160 || i10 == 5760) {
            return true;
        }
        return (8192 <= i10 && i10 <= 8202) || i10 == 8239 || i10 == 8287 || i10 == 12288;
    }
}
