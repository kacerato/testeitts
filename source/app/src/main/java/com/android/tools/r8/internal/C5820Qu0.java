package com.android.tools.r8.internal;

public final class C5820Qu0 implements Comparable {

    public final short f43760b;

    public static int a(short s10) {
        return Short.hashCode(s10);
    }

    @Override
    public final int compareTo(Object obj) {
        return GJ.a(this.f43760b & 65535, ((C5820Qu0) obj).f43760b & 65535);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5820Qu0) && this.f43760b == ((C5820Qu0) obj).f43760b;
    }

    public final int hashCode() {
        return Short.hashCode(this.f43760b);
    }

    public final String toString() {
        return String.valueOf(this.f43760b & 65535);
    }
}
