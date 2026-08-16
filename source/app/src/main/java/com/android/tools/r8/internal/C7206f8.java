package com.android.tools.r8.internal;

public final class C7206f8 extends C7707i8 {

    public final int f47875f;

    public final int f47876g;

    public C7206f8(byte[] bArr, int i10, int i11) {
        super(bArr);
        AbstractC8373m8.a(i10, i10 + i11, bArr.length);
        this.f47875f = i10;
        this.f47876g = i11;
    }

    @Override
    public final int d() {
        return this.f47875f;
    }

    @Override
    public final byte j(int i10) {
        int i11 = this.f47876g;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.f48850e[this.f47875f + i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException(T60.a(i10, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
    }

    @Override
    public final byte k(int i10) {
        return this.f48850e[this.f47875f + i10];
    }

    @Override
    public final int size() {
        return this.f47876g;
    }
}
