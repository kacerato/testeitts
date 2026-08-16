package com.ardor3d.util.export;

import java.lang.reflect.Array;

public final class CapsuleUtils {
    private CapsuleUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] asArray(Savable[] savableArr, Class<T> cls) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, savableArr.length));
        for (int i10 = 0; i10 < savableArr.length; i10++) {
            tArr[i10] = savableArr[i10];
        }
        return tArr;
    }

    public static Savable[] asSavableArray(Object[] objArr) {
        Savable[] savableArr = new Savable[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            savableArr[i10] = (Savable) objArr[i10];
        }
        return savableArr;
    }
}
