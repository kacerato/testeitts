package al;

import sk.C15316b;

public final class n extends o {
    private int k(short s10, short s11, short s12, short s13) {
        int i10 = (s11 & 1) * s10;
        int i11 = (s13 & 1) * s12;
        for (int i12 = 1; i12 < 13; i12++) {
            int i13 = 1 << i12;
            i10 ^= (s11 & i13) * s10;
            i11 ^= (i13 & s13) * s12;
        }
        return i10 ^ i11;
    }

    @Override
    public short a(short s10, short s11) {
        short n10 = n(s10, s10);
        short m10 = m(n10, n10);
        return n(m(l(m(l(m10), m10)), m10), s11);
    }

    @Override
    public short b(short s10) {
        return a(s10, (short) 1);
    }

    @Override
    public short d(short s10, short s11) {
        int i10 = (s11 & 1) * s10;
        for (int i11 = 1; i11 < 13; i11++) {
            i10 ^= ((1 << i11) & s11) * s10;
        }
        return g(i10);
    }

    @Override
    public int e(short s10, short s11) {
        int i10 = (s11 & 1) * s10;
        for (int i11 = 1; i11 < 13; i11++) {
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
            for (int i17 : iArr) {
                int i18 = (i15 - i10) + i17;
                iArr2[i18] = iArr2[i18] ^ i16;
            }
        }
        for (int i19 = 0; i19 < i10; i19++) {
            sArr[i19] = g(iArr2[i19]);
        }
    }

    @Override
    public short g(int i10) {
        int i11 = i10 & 8191;
        int i12 = i10 >>> 13;
        int i13 = ((i12 << 4) ^ (i12 << 3)) ^ (i12 << 1);
        int i14 = i13 >>> 13;
        return (short) ((((i12 ^ i11) ^ i14) ^ (i13 & 8191)) ^ (((i14 << 4) ^ (i14 << 3)) ^ (i14 << 1)));
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
            for (int i15 : iArr) {
                int i16 = (i13 - i10) + i15;
                iArr2[i16] = iArr2[i16] ^ i14;
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            sArr[i17] = g(iArr2[i17]);
        }
    }

    public final short l(short s10) {
        return g(C15316b.a(g(C15316b.a(s10))));
    }

    public final short m(short s10, short s11) {
        long j10 = s10;
        long j11 = s11;
        long j12 = (j11 << 18) * (64 & j10);
        long j13 = j10 ^ (j10 << 21);
        long j14 = ((j11 << 15) * (j13 & 8589934624L)) ^ (((((j12 ^ ((268435457 & j13) * j11)) ^ ((j11 << 3) * (536870914 & j13))) ^ ((j11 << 6) * (1073741828 & j13))) ^ ((j11 << 9) * (2147483656L & j13))) ^ ((j11 << 12) * (4294967312L & j13)));
        long j15 = 2305834213120671744L & j14;
        long j16 = j14 ^ ((j15 >>> 26) ^ (((j15 >>> 18) ^ (j15 >>> 20)) ^ (j15 >>> 24)));
        long j17 = 8796025913344L & j16;
        return g(((int) (j16 ^ ((j17 >>> 26) ^ (((j17 >>> 18) ^ (j17 >>> 20)) ^ (j17 >>> 24))))) & 67108863);
    }

    public final short n(short s10, short s11) {
        long j10 = s10;
        long j11 = s11;
        long j12 = (j11 << 6) * (64 & j10);
        long j13 = j10 ^ (j10 << 7);
        long j14 = ((j11 << 5) * (j13 & 524320)) ^ (((((j12 ^ ((16385 & j13) * j11)) ^ ((j11 << 1) * (32770 & j13))) ^ ((j11 << 2) * (65540 & j13))) ^ ((j11 << 3) * (131080 & j13))) ^ ((j11 << 4) * (262160 & j13)));
        long j15 = 137371844608L & j14;
        return g(((int) (j14 ^ ((j15 >>> 26) ^ (((j15 >>> 18) ^ (j15 >>> 20)) ^ (j15 >>> 24))))) & 67108863);
    }
}
