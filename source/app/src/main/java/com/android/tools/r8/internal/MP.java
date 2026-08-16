package com.android.tools.r8.internal;

public final class MP extends SP {

    public final char f42289a;

    public MP(char c10) {
        this.f42289a = c10;
    }

    @Override
    public final Object a() {
        return Character.valueOf(this.f42289a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MP) && this.f42289a == ((MP) obj).f42289a;
    }

    public final int hashCode() {
        return Character.hashCode(this.f42289a);
    }
}
