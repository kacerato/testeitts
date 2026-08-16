package com.android.tools.r8.internal;

public class IT implements Comparable<IT> {

    public static final IT f41106d = new IT(0, Integer.MAX_VALUE);

    public final int f41107b;

    public int f41108c;

    public IT(int i10, int i11) {
        this.f41107b = i10;
        this.f41108c = i11;
    }

    @Override
    public final int compareTo(IT it) {
        IT it2 = it;
        int i10 = this.f41107b;
        int i11 = it2.f41107b;
        return i10 != i11 ? i10 - i11 : this.f41108c - it2.f41108c;
    }

    public final String toString() {
        return "[" + this.f41107b + ", " + this.f41108c + "[";
    }
}
