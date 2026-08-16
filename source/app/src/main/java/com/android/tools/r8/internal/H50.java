package com.android.tools.r8.internal;

public final class H50 extends I50 {

    public final I50 f40678b;

    public final String f40679c;

    public H50(I50 i50, String str) {
        if (i50.d()) {
            i50 = i50.c();
            if (!I50.f40970a && i50.d()) {
                throw new AssertionError();
            }
        }
        this.f40678b = i50;
        this.f40679c = str;
    }

    @Override
    public final String a() {
        return this.f40679c;
    }

    @Override
    public final String b() {
        return "property";
    }

    @Override
    public final I50 c() {
        return this.f40678b;
    }

    @Override
    public final boolean d() {
        return "value".equals(this.f40679c);
    }
}
