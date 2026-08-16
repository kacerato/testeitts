package com.google.android.gms.internal.measurement;

public final class T4 extends U4 {

    public int f62122c;

    public int f62123d;

    public int f62124e;

    public T4(byte[] bArr, int i10, int i11, boolean z10, byte[] bArr2) {
        super(null);
        this.f62124e = Integer.MAX_VALUE;
        this.f62122c = 0;
    }

    public final int c(int i10) throws zzmq {
        int i11 = this.f62124e;
        this.f62124e = 0;
        int i12 = this.f62122c + this.f62123d;
        this.f62122c = i12;
        if (i12 > 0) {
            this.f62123d = i12;
            this.f62122c = 0;
        } else {
            this.f62123d = 0;
        }
        return i11;
    }
}
