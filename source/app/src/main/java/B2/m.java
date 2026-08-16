package B2;

@k
public final class m extends AbstractC2345e {

    public static final q f1451b = new m();

    public static final long f1452c = -6505348102511208375L;

    public static final long f1453d = -8261664234251669945L;

    public static final long f1454e = -4288712594273399085L;

    public static final long f1455f = -4132994306676758123L;

    @v2.d
    public static long l(byte[] bArr, int i10, int i11) {
        long p10 = i11 <= 32 ? p(bArr, i10, i11, -1397348546323613475L) : i11 <= 64 ? o(bArr, i10, i11) : m(bArr, i10, i11);
        long j10 = f1452c;
        long b10 = i11 >= 8 ? x.b(bArr, i10) : -6505348102511208375L;
        if (i11 >= 9) {
            j10 = x.b(bArr, (i10 + i11) - 8);
        }
        long n10 = n(p10 + j10, b10);
        return (n10 == 0 || n10 == 1) ? n10 - 2 : n10;
    }

    public static long m(byte[] bArr, int i10, int i11) {
        long b10 = x.b(bArr, i10);
        int i12 = i10 + i11;
        long b11 = x.b(bArr, i12 - 16) ^ f1453d;
        long b12 = x.b(bArr, i12 - 56) ^ f1452c;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long j10 = i11;
        r(bArr, i12 - 64, j10, b11, jArr);
        r(bArr, i12 - 32, j10 * f1453d, f1452c, jArr2);
        long q10 = b12 + (q(jArr[1]) * f1453d);
        long rotateRight = Long.rotateRight(q10 + b10, 39) * f1453d;
        long rotateRight2 = Long.rotateRight(b11, 33) * f1453d;
        int i13 = i10;
        int i14 = (i11 - 1) & (-64);
        while (true) {
            long rotateRight3 = Long.rotateRight(rotateRight + rotateRight2 + jArr[0] + x.b(bArr, i13 + 16), 37) * f1453d;
            long rotateRight4 = Long.rotateRight(rotateRight2 + jArr[1] + x.b(bArr, i13 + 48), 42) * f1453d;
            long j11 = rotateRight3 ^ jArr2[1];
            long j12 = rotateRight4 ^ jArr[0];
            long rotateRight5 = Long.rotateRight(q10 ^ jArr2[0], 33);
            r(bArr, i13, jArr[1] * f1453d, j11 + jArr2[0], jArr);
            r(bArr, i13 + 32, jArr2[1] + rotateRight5, j12, jArr2);
            i13 += 64;
            i14 -= 64;
            if (i14 == 0) {
                return n(n(jArr[0], jArr2[0]) + (q(j12) * f1453d) + j11, n(jArr[1], jArr2[1]) + rotateRight5);
            }
            rotateRight = rotateRight5;
            q10 = j11;
            rotateRight2 = j12;
        }
    }

    @v2.d
    public static long n(long j10, long j11) {
        long j12 = (j11 ^ j10) * f1455f;
        long j13 = (j10 ^ (j12 ^ (j12 >>> 47))) * f1455f;
        return (j13 ^ (j13 >>> 47)) * f1455f;
    }

    private static long o(byte[] bArr, int i10, int i11) {
        long b10 = x.b(bArr, i10 + 24);
        int i12 = i10 + i11;
        int i13 = i12 - 16;
        long b11 = x.b(bArr, i10) + ((i11 + x.b(bArr, i13)) * f1452c);
        long rotateRight = Long.rotateRight(b11 + b10, 52);
        long rotateRight2 = Long.rotateRight(b11, 37);
        long b12 = b11 + x.b(bArr, i10 + 8);
        long rotateRight3 = rotateRight2 + Long.rotateRight(b12, 7);
        int i14 = i10 + 16;
        long b13 = b12 + x.b(bArr, i14);
        long j10 = b10 + b13;
        long rotateRight4 = rotateRight + Long.rotateRight(b13, 31) + rotateRight3;
        long b14 = x.b(bArr, i14) + x.b(bArr, i12 - 32);
        long b15 = x.b(bArr, i12 - 8);
        long rotateRight5 = Long.rotateRight(b14 + b15, 52);
        long rotateRight6 = Long.rotateRight(b14, 37);
        long b16 = b14 + x.b(bArr, i12 - 24);
        long rotateRight7 = rotateRight6 + Long.rotateRight(b16, 7);
        long b17 = b16 + x.b(bArr, i13);
        return q((q(((j10 + rotateRight5 + Long.rotateRight(b17, 31) + rotateRight7) * f1454e) + ((b15 + b17 + rotateRight4) * f1452c)) * f1452c) + rotateRight4) * f1454e;
    }

    @v2.d
    public static long p(byte[] bArr, int i10, int i11, long j10) {
        int i12 = i11 & (-8);
        int i13 = i11 & 7;
        long j11 = j10 ^ (i11 * f1455f);
        for (int i14 = 0; i14 < i12; i14 += 8) {
            j11 = (j11 ^ (q(x.b(bArr, i10 + i14) * f1455f) * f1455f)) * f1455f;
        }
        if (i13 != 0) {
            j11 = (x.c(bArr, i10 + i12, i13) ^ j11) * f1455f;
        }
        return q(q(j11) * f1455f);
    }

    private static long q(long j10) {
        return j10 ^ (j10 >>> 47);
    }

    private static void r(byte[] bArr, int i10, long j10, long j11, long[] jArr) {
        long b10 = x.b(bArr, i10);
        long b11 = x.b(bArr, i10 + 8);
        long b12 = x.b(bArr, i10 + 16);
        long b13 = x.b(bArr, i10 + 24);
        long j12 = j10 + b10;
        long j13 = b11 + j12 + b12;
        long rotateRight = Long.rotateRight(j11 + j12 + b13, 51) + Long.rotateRight(j13, 23);
        jArr[0] = j13 + b13;
        jArr[1] = rotateRight + j12;
    }

    @Override
    public int h() {
        return 64;
    }

    @Override
    public p k(byte[] bArr, int i10, int i11) {
        w2.H.f0(i10, i10 + i11, bArr.length);
        return p.j(l(bArr, i10, i11));
    }

    public String toString() {
        return "Hashing.fingerprint2011()";
    }
}
