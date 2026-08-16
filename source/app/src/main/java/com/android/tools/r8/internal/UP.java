package com.android.tools.r8.internal;

public final class UP extends SP {

    public final short f44752a;

    public UP(short s10) {
        this.f44752a = s10;
    }

    @Override
    public final Object a() {
        return Short.valueOf(this.f44752a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UP) && this.f44752a == ((UP) obj).f44752a;
    }

    public final int hashCode() {
        return Short.hashCode(this.f44752a);
    }
}
