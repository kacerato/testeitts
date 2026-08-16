package org.bouncycastle.crypto.util;

import java.math.BigInteger;

public class s {

    public final byte[] f101097a;

    public int f101098b = 0;

    public s(byte[] bArr) {
        this.f101097a = bArr;
    }

    public byte[] a() {
        return org.bouncycastle.util.a.p(this.f101097a);
    }

    public boolean b() {
        return this.f101098b < this.f101097a.length;
    }

    public BigInteger c() {
        int h10 = h();
        int i10 = this.f101098b;
        int i11 = i10 + h10;
        byte[] bArr = this.f101097a;
        if (i11 > bArr.length) {
            throw new IllegalArgumentException("not enough data for big num");
        }
        int i12 = h10 + i10;
        this.f101098b = i12;
        return new BigInteger(1, org.bouncycastle.util.a.X(bArr, i10, i12));
    }

    public byte[] d() {
        int h10 = h();
        if (h10 == 0) {
            return new byte[0];
        }
        int i10 = this.f101098b;
        byte[] bArr = this.f101097a;
        if (i10 > bArr.length - h10) {
            throw new IllegalArgumentException("not enough data for block");
        }
        int i11 = h10 + i10;
        this.f101098b = i11;
        return org.bouncycastle.util.a.X(bArr, i10, i11);
    }

    public byte[] e() {
        return f(8);
    }

    public byte[] f(int i10) {
        int i11;
        int h10 = h();
        if (h10 == 0) {
            return new byte[0];
        }
        int i12 = this.f101098b;
        byte[] bArr = this.f101097a;
        if (i12 > bArr.length - h10) {
            throw new IllegalArgumentException("not enough data for block");
        }
        if (h10 % i10 != 0) {
            throw new IllegalArgumentException("missing padding");
        }
        int i13 = i12 + h10;
        this.f101098b = i13;
        if (h10 > 0 && (i11 = bArr[i13 - 1] & 255) > 0 && i11 < i10) {
            i13 -= i11;
            int i14 = 1;
            int i15 = i13;
            while (i14 <= i11) {
                if (i14 != (this.f101097a[i15] & 255)) {
                    throw new IllegalArgumentException("incorrect padding");
                }
                i14++;
                i15++;
            }
        }
        return org.bouncycastle.util.a.X(this.f101097a, i12, i13);
    }

    public String g() {
        return org.bouncycastle.util.w.c(d());
    }

    public int h() {
        int i10 = this.f101098b;
        byte[] bArr = this.f101097a;
        if (i10 > bArr.length - 4) {
            throw new IllegalArgumentException("4 bytes for U32 exceeds buffer.");
        }
        int i11 = i10 + 1;
        this.f101098b = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.f101098b = i13;
        int i14 = ((bArr[i11] & 255) << 16) | i12;
        int i15 = i10 + 3;
        this.f101098b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        this.f101098b = i10 + 4;
        return (bArr[i15] & 255) | i16;
    }

    public void i() {
        int h10 = h();
        int i10 = this.f101098b;
        if (i10 > this.f101097a.length - h10) {
            throw new IllegalArgumentException("not enough data for block");
        }
        this.f101098b = i10 + h10;
    }

    public s(byte[] bArr, byte[] bArr2) {
        this.f101097a = bArr2;
        for (int i10 = 0; i10 != bArr.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                throw new IllegalArgumentException("magic-number incorrect");
            }
        }
        this.f101098b += bArr.length;
    }
}
