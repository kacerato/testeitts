package com.android.tools.r8.internal;

public final class FR {

    public static final boolean f40196d = true;

    public final byte[] f40197a;

    public final String f40198b;

    public boolean f40199c;

    public FR(String str, byte[] bArr) {
        this.f40197a = bArr;
        this.f40198b = str;
    }

    public final String a() {
        if (f40196d || this.f40198b.startsWith("res/")) {
            return this.f40198b.substring(4);
        }
        throw new AssertionError();
    }
}
