package com.android.tools.r8.internal;

public final class K5 extends M5 {

    public final char[] f41571d;

    public K5(J5 j52) {
        super(j52, null);
        this.f41571d = new char[512];
        if (j52.f41281b.length != 16) {
            throw new IllegalArgumentException();
        }
        for (int i10 = 0; i10 < 256; i10++) {
            char[] cArr = this.f41571d;
            char[] cArr2 = j52.f41281b;
            cArr[i10] = cArr2[i10 >>> 4];
            cArr[i10 | 256] = cArr2[i10 & 15];
        }
    }

    @Override
    public final void a(StringBuilder sb2, byte[] bArr, int i10) {
        U60.a(0, i10, bArr.length);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = bArr[i11] & 255;
            sb2.append(this.f41571d[i12]);
            sb2.append(this.f41571d[i12 | 256]);
        }
    }

    @Override
    public final N5 a(J5 j52) {
        return new K5(j52);
    }
}
