package com.android.tools.r8.internal;

public final class L6 {

    public static final boolean f41863c = true;

    public final boolean f41864a;

    public final K6 f41865b;

    public L6(I6 i62, K6 k62) {
        if (!f41863c && i62 == I6.f40972b) {
            throw new AssertionError();
        }
        this.f41864a = i62 == I6.f40973c;
        this.f41865b = k62;
    }

    public L6(String str) {
        int indexOf = str.indexOf(58);
        this.f41864a = str.substring(0, indexOf).trim().equals("good");
        this.f41865b = new K6(str.substring(indexOf + 1).trim());
    }
}
