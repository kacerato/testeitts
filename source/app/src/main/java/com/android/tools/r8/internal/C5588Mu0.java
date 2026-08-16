package com.android.tools.r8.internal;

public final class C5588Mu0 implements Comparable {

    public final byte f42453b;

    public static int a(byte b10) {
        return Byte.hashCode(b10);
    }

    @Override
    public final int compareTo(Object obj) {
        return GJ.a(this.f42453b & 255, ((C5588Mu0) obj).f42453b & 255);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5588Mu0) && this.f42453b == ((C5588Mu0) obj).f42453b;
    }

    public final int hashCode() {
        return Byte.hashCode(this.f42453b);
    }

    public final String toString() {
        return String.valueOf(this.f42453b & 255);
    }
}
