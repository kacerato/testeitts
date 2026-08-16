package com.android.tools.r8.internal;

public final class GQ {

    public final int f40479a;

    public final int f40480b;

    public final int f40481c;

    public GQ(int i10, int i11, int i12) {
        this.f40479a = i10;
        this.f40480b = i11;
        this.f40481c = i12;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GQ)) {
            return false;
        }
        GQ gq = (GQ) obj;
        return this.f40479a == gq.f40479a && this.f40480b == gq.f40480b && this.f40481c == gq.f40481c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f40481c) + ((Integer.hashCode(this.f40480b) + (Integer.hashCode(this.f40479a) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f40479a);
        sb2.append('.');
        sb2.append(this.f40480b);
        sb2.append('.');
        sb2.append(this.f40481c);
        return sb2.toString();
    }
}
