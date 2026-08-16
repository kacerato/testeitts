package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Logger;

public abstract class AbstractC8368m60 {

    public static final int f50199a = 0;

    static {
        Logger.getLogger(AbstractC8368m60.class.getName());
    }

    public static Set a() {
        return ConcurrentHashMap.newKeySet();
    }

    public static Object[] a(int i10, Object[] objArr) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        return Arrays.copyOf(objArr, i10);
    }

    public static Object[] a(int i10, int i11, Object[] objArr, Object[] objArr2) {
        return Arrays.copyOfRange(objArr, i10, i11, objArr2.getClass());
    }
}
