package com.android.tools.r8.internal;

public abstract class I50 {

    public static final boolean f40970a = true;

    public final FM a(String str) {
        throw new FM(this, str);
    }

    public abstract String a();

    public final H50 b(String str) {
        if (f40970a || str != null) {
            return new H50(this, str);
        }
        throw new AssertionError();
    }

    public abstract String b();

    public I50 c() {
        return null;
    }

    public boolean d() {
        return this instanceof E50;
    }
}
