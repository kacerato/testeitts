package com.android.tools.r8.internal;

public abstract class AbstractC9047qA {
    public static int a(int i10) {
        return (int) (Integer.rotateLeft((int) (i10 * com.google.common.collect.Y0.f66375a), 15) * com.google.common.collect.Y0.f66376b);
    }

    public static int a(Object obj) {
        return a(obj == null ? 0 : obj.hashCode());
    }

    public static int a(int i10, double d10) {
        int max = Math.max(i10, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max <= ((int) (d10 * highestOneBit))) {
            return highestOneBit;
        }
        int i11 = highestOneBit << 1;
        if (i11 > 0) {
            return i11;
        }
        return 1073741824;
    }
}
