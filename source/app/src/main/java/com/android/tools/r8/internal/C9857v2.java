package com.android.tools.r8.internal;

import java.util.function.BiPredicate;

public final class C9857v2 extends AbstractC10358y2 {

    public final byte[] f53002c;

    public C9857v2(byte[] bArr) {
        this.f53002c = bArr;
    }

    @Override
    public final boolean a(byte[] bArr, int i10, int i11) {
        if (bArr.length != i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i12] != this.f53002c[i12 + i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final byte b(byte[] bArr, int i10, int i11) {
        int i12 = i10;
        while (i12 < i10 + i11) {
            byte[] bArr2 = this.f53002c;
            int a10 = HJ.a((byte) 0, (byte) 0, bArr2[i12], bArr2[i12 + 1]);
            int i13 = i12 + 2;
            int i14 = i13 + a10;
            if (a(bArr, i13, a10)) {
                return this.f53002c[i14];
            }
            i12 = i14 + 1;
        }
        return (byte) 0;
    }

    @Override
    public final C10191x2 c(int i10) {
        byte[] bArr = this.f53002c;
        C10191x2 c10191x2 = C10191x2.f53671c;
        int a10 = HJ.a(bArr[i10], bArr[i10 + 1], bArr[i10 + 2], bArr[i10 + 3]);
        int a11 = HJ.a((byte) 0, (byte) 0, bArr[i10 + 4], bArr[i10 + 5]);
        if (a10 == 0 && a11 == 0) {
            return c10191x2;
        }
        if ((a10 >= 0 || a11 <= 0) && (a10 <= 0 || a11 != 0)) {
            return new C10191x2(a10, a11);
        }
        if (C10191x2.f53672d) {
            return c10191x2;
        }
        throw new AssertionError((Object) "Unexpected position and length");
    }

    @Override
    public final int d() {
        byte[] bArr = this.f53002c;
        return HJ.a(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    @Override
    public final int a(int i10, int i11, byte[] bArr, BiPredicate biPredicate) {
        if (this.f53002c.length < i11) {
            return -1;
        }
        for (int i12 = i10; i12 < i10 + i11; i12 += 2) {
            byte[] bArr2 = this.f53002c;
            int a10 = HJ.a((byte) 0, (byte) 0, bArr2[i12], bArr2[i12 + 1]);
            if (biPredicate.test(Integer.valueOf(a10), bArr)) {
                return a10;
            }
        }
        return -1;
    }
}
