package com.google.android.filament;

public class NativeSurface {

    public final int f60040a;

    public final int f60041b;

    public final long f60042c;

    public NativeSurface(int i10, int i11) {
        this.f60040a = i10;
        this.f60041b = i11;
        this.f60042c = nCreateSurface(i10, i11);
    }

    private static native long nCreateSurface(int i10, int i11);

    private static native void nDestroySurface(long j10);

    public void a() {
        nDestroySurface(this.f60042c);
    }

    public int b() {
        return this.f60041b;
    }

    public long c() {
        return this.f60042c;
    }

    public int d() {
        return this.f60040a;
    }
}
