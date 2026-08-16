package com.android.tools.r8.internal;

public final class WP extends SP {

    public final byte f45389a;

    public WP(byte b10) {
        this.f45389a = b10;
    }

    @Override
    public final Object a() {
        return new C5588Mu0(this.f45389a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WP) && this.f45389a == ((WP) obj).f45389a;
    }

    public final int hashCode() {
        return C5588Mu0.a(this.f45389a);
    }
}
