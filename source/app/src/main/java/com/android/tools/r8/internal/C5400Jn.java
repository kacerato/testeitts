package com.android.tools.r8.internal;

public final class C5400Jn implements Comparable {

    public final N8 f41501b;

    public int f41502c;

    public int f41503d;

    public C5400Jn(N8 n82, int i10, int i11) {
        this.f41501b = n82;
        this.f41502c = i10;
        this.f41503d = i11;
    }

    public final int a(C5400Jn c5400Jn) {
        return Integer.compare(this.f41502c, c5400Jn.f41502c);
    }

    @Override
    public final int compareTo(Object obj) {
        return Integer.compare(this.f41502c, ((C5400Jn) obj).f41502c);
    }
}
