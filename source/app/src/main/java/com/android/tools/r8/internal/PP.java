package com.android.tools.r8.internal;

public final class PP extends SP {

    public final float f43200a;

    public PP(float f10) {
        this.f43200a = f10;
    }

    @Override
    public final Object a() {
        return Float.valueOf(this.f43200a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PP) && Float.compare(this.f43200a, ((PP) obj).f43200a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f43200a);
    }
}
