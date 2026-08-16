package B2;

@k
public final class l extends AbstractC2345e {

    public static final q f1447b = new l();

    public static final long f1448c = -4348849565147123417L;

    public static final long f1449d = -5435081209227447693L;

    public static final long f1450e = -7286425919675154353L;

    @v2.d
    public static long l(byte[] bArr, int i10, int i11) {
        return i11 <= 32 ? i11 <= 16 ? m(bArr, i10, i11) : o(bArr, i10, i11) : i11 <= 64 ? p(bArr, i10, i11) : q(bArr, i10, i11);
    }

    public static long m(byte[] bArr, int i10, int i11) {
        if (i11 >= 8) {
            long j10 = (i11 * 2) + f1450e;
            long b10 = x.b(bArr, i10) + f1450e;
            long b11 = x.b(bArr, (i10 + i11) - 8);
            return n((Long.rotateRight(b11, 37) * j10) + b10, (Long.rotateRight(b10, 25) + b11) * j10, j10);
        }
        if (i11 >= 4) {
            return n(i11 + ((x.a(bArr, i10) & 4294967295L) << 3), x.a(bArr, (i10 + i11) - 4) & 4294967295L, (i11 * 2) + f1450e);
        }
        if (i11 <= 0) {
            return f1450e;
        }
        return r((((bArr[i10] & 255) + ((bArr[(i11 >> 1) + i10] & 255) << 8)) * f1450e) ^ ((i11 + ((bArr[i10 + (i11 - 1)] & 255) << 2)) * f1448c)) * f1450e;
    }

    public static long n(long j10, long j11, long j12) {
        long j13 = (j10 ^ j11) * j12;
        long j14 = ((j13 ^ (j13 >>> 47)) ^ j11) * j12;
        return (j14 ^ (j14 >>> 47)) * j12;
    }

    public static long o(byte[] bArr, int i10, int i11) {
        long j10 = (i11 * 2) + f1450e;
        long b10 = x.b(bArr, i10) * f1449d;
        long b11 = x.b(bArr, i10 + 8);
        int i12 = i10 + i11;
        long b12 = x.b(bArr, i12 - 8) * j10;
        return n((x.b(bArr, i12 - 16) * f1450e) + Long.rotateRight(b10 + b11, 43) + Long.rotateRight(b12, 30), b10 + Long.rotateRight(b11 + f1450e, 18) + b12, j10);
    }

    public static long p(byte[] bArr, int i10, int i11) {
        long j10 = (i11 * 2) + f1450e;
        long b10 = x.b(bArr, i10) * f1450e;
        long b11 = x.b(bArr, i10 + 8);
        int i12 = i10 + i11;
        long b12 = x.b(bArr, i12 - 8) * j10;
        long rotateRight = Long.rotateRight(b10 + b11, 43) + Long.rotateRight(b12, 30) + (x.b(bArr, i12 - 16) * f1450e);
        long n10 = n(rotateRight, b12 + Long.rotateRight(b11 + f1450e, 18) + b10, j10);
        long b13 = x.b(bArr, i10 + 16) * j10;
        long b14 = x.b(bArr, i10 + 24);
        long b15 = (rotateRight + x.b(bArr, i12 - 32)) * j10;
        return n(((n10 + x.b(bArr, i12 - 24)) * j10) + Long.rotateRight(b13 + b14, 43) + Long.rotateRight(b15, 30), b13 + Long.rotateRight(b14 + b10, 18) + b15, j10);
    }

    public static long q(byte[] bArr, int i10, int i11) {
        long j10 = 81;
        long j11 = (j10 * f1449d) + 113;
        long r10 = r((j11 * f1450e) + 113) * f1450e;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long b10 = (j10 * f1450e) + x.b(bArr, i10);
        int i12 = i11 - 1;
        int i13 = i10 + ((i12 / 64) * 64);
        int i14 = i12 & 63;
        int i15 = i13 + i14;
        int i16 = i15 - 63;
        int i17 = i10;
        while (true) {
            long rotateRight = Long.rotateRight(b10 + j11 + jArr[0] + x.b(bArr, i17 + 8), 37) * f1449d;
            long rotateRight2 = Long.rotateRight(j11 + jArr[1] + x.b(bArr, i17 + 48), 42) * f1449d;
            long j12 = rotateRight ^ jArr2[1];
            long b11 = rotateRight2 + jArr[0] + x.b(bArr, i17 + 40);
            long rotateRight3 = Long.rotateRight(r10 + jArr2[0], 33) * f1449d;
            s(bArr, i17, jArr[1] * f1449d, j12 + jArr2[0], jArr);
            s(bArr, i17 + 32, rotateRight3 + jArr2[1], b11 + x.b(bArr, i17 + 16), jArr2);
            int i18 = i17 + 64;
            if (i18 == i13) {
                long j13 = f1449d + ((j12 & 255) << 1);
                long j14 = jArr2[0] + i14;
                jArr2[0] = j14;
                long j15 = jArr[0] + j14;
                jArr[0] = j15;
                jArr2[0] = jArr2[0] + j15;
                long rotateRight4 = Long.rotateRight(rotateRight3 + b11 + jArr[0] + x.b(bArr, i15 - 55), 37) * j13;
                long rotateRight5 = Long.rotateRight(b11 + jArr[1] + x.b(bArr, i15 - 15), 42) * j13;
                long j16 = rotateRight4 ^ (jArr2[1] * 9);
                long b12 = rotateRight5 + (jArr[0] * 9) + x.b(bArr, i15 - 23);
                long rotateRight6 = Long.rotateRight(j12 + jArr2[0], 33) * j13;
                s(bArr, i16, jArr[1] * j13, j16 + jArr2[0], jArr);
                s(bArr, i15 - 31, rotateRight6 + jArr2[1], b12 + x.b(bArr, i15 - 47), jArr2);
                return n(n(jArr[0], jArr2[0], j13) + (r(b12) * f1448c) + j16, n(jArr[1], jArr2[1], j13) + rotateRight6, j13);
            }
            i17 = i18;
            r10 = j12;
            j11 = b11;
            b10 = rotateRight3;
        }
    }

    public static long r(long j10) {
        return j10 ^ (j10 >>> 47);
    }

    public static void s(byte[] bArr, int i10, long j10, long j11, long[] jArr) {
        long b10 = x.b(bArr, i10);
        long b11 = x.b(bArr, i10 + 8);
        long b12 = x.b(bArr, i10 + 16);
        long b13 = x.b(bArr, i10 + 24);
        long j12 = j10 + b10;
        long j13 = b11 + j12 + b12;
        long rotateRight = Long.rotateRight(j11 + j12 + b13, 21) + Long.rotateRight(j13, 44);
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
        return "Hashing.farmHashFingerprint64()";
    }
}
