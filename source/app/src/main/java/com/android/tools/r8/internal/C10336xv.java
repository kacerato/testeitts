package com.android.tools.r8.internal;

public final class C10336xv {

    public final O0 f53873a;

    public final int f53874b;

    public C10336xv(int i10, O0 o02) {
        this.f53873a = o02;
        this.f53874b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C10336xv)) {
            return false;
        }
        C10336xv c10336xv = (C10336xv) obj;
        return this.f53873a == c10336xv.f53873a && this.f53874b == c10336xv.f53874b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f53873a) * 65535) + this.f53874b;
    }
}
