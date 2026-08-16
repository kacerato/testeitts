package com.google.android.gms.internal.measurement;

public final class N4 extends R4 {

    public final int f62064e;

    public N4(byte[] bArr, int i10, int i11) {
        super(bArr);
        S4.s(0, i11, bArr.length);
        this.f62064e = i11;
    }

    @Override
    public final byte j(int i10) {
        int i11 = this.f62064e;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f62107d[i10];
        }
        if (i10 < 0) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 11);
            sb2.append("Index < 0: ");
            sb2.append(i10);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i10).length() + 18 + String.valueOf(i11).length());
        sb3.append("Index > length: ");
        sb3.append(i10);
        sb3.append(", ");
        sb3.append(i11);
        throw new ArrayIndexOutOfBoundsException(sb3.toString());
    }

    @Override
    public final byte k(int i10) {
        return this.f62107d[i10];
    }

    @Override
    public final int l() {
        return this.f62064e;
    }

    @Override
    public final int u() {
        return 0;
    }
}
