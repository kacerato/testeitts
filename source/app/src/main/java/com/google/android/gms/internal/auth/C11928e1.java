package com.google.android.gms.internal.auth;

public final class C11928e1 extends C11944i1 {

    public final int f61719g;

    public C11928e1(byte[] bArr, int i10, int i11) {
        super(bArr);
        AbstractC11956l1.s(0, i11, bArr.length);
        this.f61719g = i11;
    }

    @Override
    public final byte j(int i10) {
        int i11 = this.f61719g;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f61771f[i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
    }

    @Override
    public final byte k(int i10) {
        return this.f61771f[i10];
    }

    @Override
    public final int l() {
        return this.f61719g;
    }

    @Override
    public final int x() {
        return 0;
    }
}
