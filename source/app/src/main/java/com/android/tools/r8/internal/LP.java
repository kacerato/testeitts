package com.android.tools.r8.internal;

public final class LP extends SP {

    public final byte f41954a;

    public LP(byte b10) {
        this.f41954a = b10;
    }

    @Override
    public final Object a() {
        return Byte.valueOf(this.f41954a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LP) && this.f41954a == ((LP) obj).f41954a;
    }

    public final int hashCode() {
        return Byte.hashCode(this.f41954a);
    }
}
