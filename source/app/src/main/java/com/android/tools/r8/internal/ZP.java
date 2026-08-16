package com.android.tools.r8.internal;

public final class ZP extends SP {

    public final short f46235a;

    public ZP(short s10) {
        this.f46235a = s10;
    }

    @Override
    public final Object a() {
        return new C5820Qu0(this.f46235a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZP) && this.f46235a == ((ZP) obj).f46235a;
    }

    public final int hashCode() {
        return C5820Qu0.a(this.f46235a);
    }
}
