package com.google.android.gms.measurement.internal;

import android.text.TextUtils;

public final class C12288f1 {

    public final W3 f63269a;

    public C12288f1(W3 w32) {
        this.f63269a = w32;
    }

    public static C12288f1 c(String str) {
        return new C12288f1((TextUtils.isEmpty(str) || str.length() > 1) ? W3.UNINITIALIZED : Z3.j(str.charAt(0)));
    }

    public final W3 a() {
        return this.f63269a;
    }

    public final String b() {
        return String.valueOf(Z3.m(this.f63269a));
    }
}
