package com.android.tools.r8.internal;

public final class C5646Nu0 implements Comparable {

    public final int f42733b;

    public static int a(int i10) {
        return Integer.hashCode(i10);
    }

    @Override
    public final int compareTo(Object obj) {
        return GJ.a(this.f42733b ^ Integer.MIN_VALUE, ((C5646Nu0) obj).f42733b ^ Integer.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5646Nu0) && this.f42733b == ((C5646Nu0) obj).f42733b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f42733b);
    }

    public final String toString() {
        return String.valueOf(this.f42733b & 4294967295L);
    }
}
