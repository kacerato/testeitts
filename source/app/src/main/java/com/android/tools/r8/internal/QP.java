package com.android.tools.r8.internal;

public final class QP extends SP {

    public final int f43573a;

    public QP(int i10) {
        this.f43573a = i10;
    }

    @Override
    public final Object a() {
        return Integer.valueOf(this.f43573a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof QP) && this.f43573a == ((QP) obj).f43573a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f43573a);
    }
}
