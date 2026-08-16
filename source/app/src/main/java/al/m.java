package al;

import sk.C15316b;

public final class m extends o {
    @Override
    public short a(short s10, short s11) {
        return d(b(s10), s11);
    }

    @Override
    public short b(short s10) {
        short d10 = d(h(s10), s10);
        short d11 = d(h(h(d10)), d10);
        return h(d(h(d(h(h(d(h(h(h(h(d11)))), d11))), d10)), s10));
    }

    @Override
    public short d(short s10, short s11) {
        int i10 = (s11 & 1) * s10;
        for (int i11 = 1; i11 < 12; i11++) {
            i10 ^= ((1 << i11) & s11) * s10;
        }
        return g(i10);
    }

    @Override
    public int e(short s10, short s11) {
        int i10 = (s11 & 1) * s10;
        for (int i11 = 1; i11 < 12; i11++) {
            i10 ^= ((1 << i11) & s11) * s10;
        }
        return i10;
    }

    @Override
    public void f(int i10, int[] iArr, short[] sArr, short[] sArr2, short[] sArr3, int[] iArr2) {
        iArr2[0] = e(sArr2[0], sArr3[0]);
        for (int i11 = 1; i11 < i10; i11++) {
            int i12 = i11 + i11;
            iArr2[i12 - 1] = 0;
            short s10 = sArr2[i11];
            short s11 = sArr3[i11];
            for (int i13 = 0; i13 < i11; i13++) {
                int i14 = i11 + i13;
                iArr2[i14] = iArr2[i14] ^ k(s10, sArr3[i13], sArr2[i13], s11);
            }
            iArr2[i12] = e(s10, s11);
        }
        for (int i15 = (i10 - 1) * 2; i15 >= i10; i15--) {
            int i16 = iArr2[i15];
            for (int i17 = 0; i17 < iArr.length - 1; i17++) {
                int i18 = (i15 - i10) + iArr[i17];
                iArr2[i18] = iArr2[i18] ^ i16;
            }
            int i19 = i15 - i10;
            iArr2[i19] = (i16 << 1) ^ iArr2[i19];
        }
        for (int i20 = 0; i20 < i10; i20++) {
            sArr[i20] = g(iArr2[i20]);
        }
    }

    @Override
    public short g(int i10) {
        return (short) ((i10 >>> 21) ^ ((((i10 & 4095) ^ (i10 >>> 12)) ^ ((2093056 & i10) >>> 9)) ^ ((14680064 & i10) >>> 18)));
    }

    @Override
    public short h(short s10) {
        return g(C15316b.a(s10));
    }

    @Override
    public int i(short s10) {
        return C15316b.a(s10);
    }

    @Override
    public void j(int i10, int[] iArr, short[] sArr, short[] sArr2, int[] iArr2) {
        iArr2[0] = i(sArr2[0]);
        for (int i11 = 1; i11 < i10; i11++) {
            int i12 = i11 + i11;
            iArr2[i12 - 1] = 0;
            iArr2[i12] = i(sArr2[i11]);
        }
        for (int i13 = (i10 - 1) * 2; i13 >= i10; i13--) {
            int i14 = iArr2[i13];
            for (int i15 = 0; i15 < iArr.length - 1; i15++) {
                int i16 = (i13 - i10) + iArr[i15];
                iArr2[i16] = iArr2[i16] ^ i14;
            }
            int i17 = i13 - i10;
            iArr2[i17] = (i14 << 1) ^ iArr2[i17];
        }
        for (int i18 = 0; i18 < i10; i18++) {
            sArr[i18] = g(iArr2[i18]);
        }
    }

    public final int k(short s10, short s11, short s12, short s13) {
        int i10 = (s11 & 1) * s10;
        int i11 = (s13 & 1) * s12;
        for (int i12 = 1; i12 < 12; i12++) {
            int i13 = 1 << i12;
            i10 ^= (s11 & i13) * s10;
            i11 ^= (i13 & s13) * s12;
        }
        return i10 ^ i11;
    }
}
