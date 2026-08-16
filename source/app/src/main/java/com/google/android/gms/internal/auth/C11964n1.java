package com.google.android.gms.internal.auth;

public final class C11964n1 extends C11972p1 {

    public final byte[] f61801c;

    public int f61802d;

    public int f61803e;

    public int f61804f;

    public C11964n1(byte[] bArr, int i10, int i11, boolean z10, C11960m1 c11960m1) {
        super(null);
        this.f61804f = Integer.MAX_VALUE;
        this.f61801c = bArr;
        this.f61802d = 0;
    }

    public final int c(int i10) throws zzfb {
        int i11 = this.f61804f;
        this.f61804f = 0;
        int i12 = this.f61802d + this.f61803e;
        this.f61802d = i12;
        if (i12 > 0) {
            this.f61803e = i12;
            this.f61802d = 0;
        } else {
            this.f61803e = 0;
        }
        return i11;
    }
}
