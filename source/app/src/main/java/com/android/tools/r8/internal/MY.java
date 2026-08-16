package com.android.tools.r8.internal;

public abstract class MY {
    public abstract int a();

    public abstract Object b();

    public final boolean equals(Object obj) {
        if (obj instanceof MY) {
            MY my = (MY) obj;
            if (a() == my.a() && V30.a(b(), my.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object b10 = b();
        return (b10 == null ? 0 : b10.hashCode()) ^ a();
    }

    public final String toString() {
        String valueOf = String.valueOf(b());
        int a10 = a();
        if (a10 == 1) {
            return valueOf;
        }
        return valueOf + " x " + a10;
    }
}
