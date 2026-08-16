package com.android.tools.r8.internal;

public final class E50 extends I50 {

    public final I50 f39749b;

    public final String f39750c;

    public E50(I50 i50, String str) {
        if (i50.d()) {
            i50 = i50.c();
            if (!I50.f40970a && i50.d()) {
                throw new AssertionError();
            }
        }
        this.f39749b = i50;
        this.f39750c = str;
    }

    @Override
    public final String a() {
        return this.f39750c;
    }

    @Override
    public final String b() {
        return "property-group";
    }

    @Override
    public final I50 c() {
        return this.f39749b;
    }
}
