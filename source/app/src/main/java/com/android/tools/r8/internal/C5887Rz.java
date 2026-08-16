package com.android.tools.r8.internal;

public final class C5887Rz {

    public final XQ f44041a;

    public final XQ f44042b;

    public final XQ f44043c;

    public final int f44044d;

    public final String f44045e;

    public C5887Rz f44046f;

    public C5887Rz(XQ xq, XQ xq2, XQ xq3, int i10, String str) {
        this.f44041a = xq;
        this.f44042b = xq2;
        this.f44043c = xq3;
        this.f44044d = i10;
        this.f44045e = str;
    }

    public static C5887Rz a(C5887Rz c5887Rz, XQ xq, XQ xq2) {
        if (c5887Rz == null) {
            return null;
        }
        C5887Rz a10 = a(c5887Rz.f44046f, xq, xq2);
        c5887Rz.f44046f = a10;
        XQ xq3 = c5887Rz.f44041a;
        int i10 = xq3.f45690e;
        XQ xq4 = c5887Rz.f44042b;
        int i11 = xq4.f45690e;
        int i12 = xq.f45690e;
        int i13 = xq2 == null ? Integer.MAX_VALUE : xq2.f45690e;
        if (i12 >= i11 || i13 <= i10) {
            return c5887Rz;
        }
        if (i12 <= i10) {
            if (i13 >= i11) {
                return a10;
            }
            C5887Rz c5887Rz2 = new C5887Rz(xq2, xq4, c5887Rz.f44043c, c5887Rz.f44044d, c5887Rz.f44045e);
            c5887Rz2.f44046f = a10;
            return c5887Rz2;
        }
        if (i13 >= i11) {
            C5887Rz c5887Rz3 = new C5887Rz(xq3, xq, c5887Rz.f44043c, c5887Rz.f44044d, c5887Rz.f44045e);
            c5887Rz3.f44046f = a10;
            return c5887Rz3;
        }
        XQ xq5 = c5887Rz.f44043c;
        int i14 = c5887Rz.f44044d;
        String str = c5887Rz.f44045e;
        C5887Rz c5887Rz4 = new C5887Rz(xq2, xq4, xq5, i14, str);
        c5887Rz4.f44046f = a10;
        c5887Rz.f44046f = c5887Rz4;
        C5887Rz c5887Rz5 = new C5887Rz(xq3, xq, xq5, i14, str);
        c5887Rz5.f44046f = c5887Rz4;
        return c5887Rz5;
    }
}
