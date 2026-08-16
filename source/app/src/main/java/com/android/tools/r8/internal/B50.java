package com.android.tools.r8.internal;

public final class B50 extends I50 {

    public final I50 f38803b;

    public final String f38804c;

    public B50(I50 i50, String str) {
        if (i50.d()) {
            i50 = i50.c();
            if (!I50.f40970a && i50.d()) {
                throw new AssertionError();
            }
        }
        this.f38803b = i50;
        this.f38804c = str;
    }

    @Override
    public final String a() {
        return "@" + this.f38804c.substring(Math.max(this.f38804c.lastIndexOf(47) + 1, 1), this.f38804c.length() - 1);
    }

    @Override
    public final String b() {
        return "annotation";
    }

    @Override
    public final I50 c() {
        return this.f38803b;
    }
}
