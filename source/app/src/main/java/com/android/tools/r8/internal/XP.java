package com.android.tools.r8.internal;

public final class XP extends SP {

    public final int f45682a;

    public XP(int i10) {
        this.f45682a = i10;
    }

    @Override
    public final Object a() {
        return new C5646Nu0(this.f45682a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof XP) && this.f45682a == ((XP) obj).f45682a;
    }

    public final int hashCode() {
        return C5646Nu0.a(this.f45682a);
    }
}
