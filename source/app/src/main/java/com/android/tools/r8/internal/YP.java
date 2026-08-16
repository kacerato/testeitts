package com.android.tools.r8.internal;

public final class YP extends SP {

    public final long f45984a;

    public YP(long j10) {
        this.f45984a = j10;
    }

    @Override
    public final Object a() {
        return new C5704Ou0(this.f45984a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof YP) && this.f45984a == ((YP) obj).f45984a;
    }

    public final int hashCode() {
        return C5704Ou0.a(this.f45984a);
    }
}
