package com.android.tools.r8;

import java.util.Arrays;

public final class ByteDataView {

    static final boolean f35212d = true;

    private byte[] f35213a;

    private final int f35214b;

    private final int f35215c;

    public ByteDataView(byte[] bArr, int i10, int i11) {
        boolean z10 = f35212d;
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && i11 < 0) {
            throw new AssertionError();
        }
        if (!z10 && i10 + i11 > bArr.length) {
            throw new AssertionError();
        }
        this.f35213a = bArr;
        this.f35214b = i10;
        this.f35215c = i11;
    }

    public static ByteDataView of(byte[] bArr) {
        return new ByteDataView(bArr, 0, bArr.length);
    }

    public byte[] copyByteData() {
        byte[] bArr = this.f35213a;
        int i10 = this.f35214b;
        return Arrays.copyOfRange(bArr, i10, this.f35215c + i10);
    }

    public byte[] getBuffer() {
        if (f35212d || this.f35213a != null) {
            return this.f35213a;
        }
        throw new AssertionError();
    }

    public int getLength() {
        if (f35212d || this.f35213a != null) {
            return this.f35215c;
        }
        throw new AssertionError();
    }

    public int getOffset() {
        if (f35212d || this.f35213a != null) {
            return this.f35214b;
        }
        throw new AssertionError();
    }

    public void invalidate() {
        this.f35213a = null;
    }
}
