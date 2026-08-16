package com.android.tools.r8.internal;

public final class KP extends SP {

    public final boolean f41665a;

    public KP(boolean z10) {
        this.f41665a = z10;
    }

    @Override
    public final Object a() {
        return Boolean.valueOf(this.f41665a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof KP) && this.f41665a == ((KP) obj).f41665a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f41665a);
    }
}
