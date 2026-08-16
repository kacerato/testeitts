package com.android.tools.r8.internal;

import java.util.Map;

public abstract class AbstractC9595tV {
    public static int a(int i10) {
        if (i10 < 3) {
            AbstractC5496Le.a(i10, "expectedSize");
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) Math.ceil(i10 / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    public static Object a(Map map, Object obj) {
        map.getClass();
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }
}
