package com.android.tools.r8.internal;

public class GT implements Comparable<GT> {

    public final int f40504b;

    public final int f40505c;

    public GT(int i10, int i11) {
        this.f40504b = i10;
        this.f40505c = i11;
    }

    public final boolean a() {
        return this.f40505c < 65535;
    }

    @Override
    public final int compareTo(GT gt) {
        GT gt2 = gt;
        int i10 = gt2.f40504b;
        int i11 = this.f40504b;
        return i10 != i11 ? i11 - i10 : this.f40505c - gt2.f40505c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GT)) {
            return false;
        }
        GT gt = (GT) obj;
        return gt.f40504b == this.f40504b && gt.f40505c == this.f40505c;
    }

    public final int hashCode() {
        return (this.f40505c * 7) + this.f40504b;
    }
}
