package com.android.tools.r8.internal;

public final class L5 extends M5 {
    public L5(J5 j52, Character ch2) {
        super(j52, ch2);
        if (j52.f41281b.length != 64) {
            throw new IllegalArgumentException();
        }
    }

    @Override
    public final void a(StringBuilder sb2, byte[] bArr, int i10) {
        int i11 = 0;
        U60.a(0, i10, bArr.length);
        for (int i12 = i10; i12 >= 3; i12 -= 3) {
            int i13 = i11 + 2;
            int i14 = ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11] & 255) << 16);
            i11 += 3;
            int i15 = i14 | (bArr[i13] & 255);
            sb2.append(this.f42159b.f41281b[i15 >>> 18]);
            sb2.append(this.f42159b.f41281b[(i15 >>> 12) & 63]);
            sb2.append(this.f42159b.f41281b[(i15 >>> 6) & 63]);
            sb2.append(this.f42159b.f41281b[i15 & 63]);
        }
        if (i11 < i10) {
            a(sb2, bArr, i11, i10 - i11);
        }
    }

    @Override
    public final N5 a(J5 j52) {
        return new L5(j52, null);
    }
}
