package com.android.tools.r8.naming;

public final class C10927e implements L {

    public static final boolean f55866g = true;

    public final String f55867b;

    public final char[] f55868c;

    public int f55869d = 0;

    public int f55870e = 1;

    public final C10932f f55871f;

    public C10927e(C10932f c10932f, String str, String str2) {
        this.f55871f = c10932f;
        this.f55867b = str;
        this.f55868c = ("L" + str + (str.isEmpty() ? "" : str2)).toCharArray();
    }

    @Override
    public final int a() {
        return this.f55869d;
    }

    @Override
    public final int b() {
        int i10 = this.f55869d;
        this.f55869d = i10 + 1;
        return i10;
    }

    @Override
    public final int c() {
        int i10 = this.f55870e;
        this.f55870e = i10 + 1;
        return i10;
    }
}
