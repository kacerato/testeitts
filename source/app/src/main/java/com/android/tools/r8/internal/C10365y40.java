package com.android.tools.r8.internal;

public final class C10365y40 {

    public final String[] f53936a;

    public int f53937b = 0;

    public C10365y40(String[] strArr) {
        this.f53936a = strArr;
    }

    public final String a() {
        int i10 = this.f53937b;
        String[] strArr = this.f53936a;
        if (i10 < strArr.length) {
            return strArr[i10];
        }
        return null;
    }

    public final String b() {
        int i10 = this.f53937b;
        if (i10 >= this.f53936a.length) {
            throw new RuntimeException("Iterating over the end of argument list.");
        }
        this.f53937b = i10 + 1;
        return a();
    }
}
