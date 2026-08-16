package com.android.tools.r8.internal;

public abstract class AbstractC9530t40 extends AbstractC7203f7 {

    public static final AbstractC9530t40 f52517a = new C9030q40();

    public static final AbstractC9530t40 f52518b = new C9196r40();

    public static final AbstractC9530t40 f52519c = new C9363s40();

    public static AbstractC9530t40 a(boolean z10) {
        return z10 ? f52517a : f52518b;
    }

    public static AbstractC9530t40 h() {
        return f52519c;
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract int f();

    public abstract boolean g();

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }
}
