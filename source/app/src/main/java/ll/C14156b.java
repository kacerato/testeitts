package ll;

import java.lang.reflect.Array;
import org.bouncycastle.util.p;
import sk.C15316b;

public class C14156b {

    public static final byte[][] f96532a = (byte[][]) Array.newInstance(Byte.TYPE, 256, 256);

    public static final byte[] f96533b = new byte[256];

    public static final int f96534c = 255;

    static {
        long j10;
        int i10 = 1;
        long j11 = 72340172838076673L;
        while (true) {
            j10 = 506097522914230528L;
            if (i10 > 255) {
                break;
            }
            for (int i11 = 0; i11 < 256; i11 += 8) {
                p.J(l(j11, j10), f96532a[i10], i11);
                j10 += 578721382704613384L;
            }
            j11 += 72340172838076673L;
            i10++;
        }
        for (int i12 = 0; i12 < 256; i12 += 8) {
            p.J(j(j10), f96533b, i12);
            j10 += 578721382704613384L;
        }
    }

    public static short a(short s10, short s11) {
        return (short) (s10 ^ s11);
    }

    public static long b(long j10, long j11) {
        return j10 ^ j11;
    }

    public static short c(short s10, short s11) {
        short s12 = (short) (s10 & 3);
        short s13 = (short) ((s10 >>> 2) & 255);
        short s14 = (short) (s11 & 3);
        short s15 = (short) ((s11 >>> 2) & 255);
        short o10 = o(s12, s14);
        short o11 = o(s13, s15);
        return (short) ((((((short) (o((short) (s13 ^ s12), (short) (s15 ^ s14)) ^ o10)) << 2) ^ o10) ^ p(o11)) & 255);
    }

    public static short d(short s10) {
        short s11 = (short) (s10 & 3);
        short s12 = (short) ((s10 >>> 2) & 255);
        return (short) ((r(s12) | (p((short) (s11 ^ s12)) << 2)) & 255);
    }

    public static long e(long j10) {
        long j11 = 3689348814741910323L & j10;
        long j12 = j10 & (-3689348814741910324L);
        long j13 = (j11 << 2) ^ j12;
        long j14 = j12 >>> 2;
        return j14 ^ q(j13 ^ j14);
    }

    public static long f(long j10, long j11) {
        long s10 = s(j10, j11);
        long j12 = 3689348814741910323L & s10;
        return (s(((j10 ^ (j10 << 2)) & (-3689348814741910324L)) ^ ((s10 & (-3689348814741910324L)) >>> 2), ((j11 ^ (j11 << 2)) & (-3689348814741910324L)) ^ 2459565876494606882L) ^ (j12 << 2)) ^ j12;
    }

    public static short g(short s10) {
        short s11 = (short) (s10 & 3);
        short t10 = t((short) ((s10 >>> 2) & 255));
        return (short) ((((t10 << 2) ^ p(t10)) ^ t(s11)) & 255);
    }

    public static long h(long j10) {
        long u10 = u(j10);
        return u10 ^ (q((-3689348814741910324L) & u10) >>> 2);
    }

    public static short i(short s10) {
        short m10 = m(s10);
        short m11 = m(m10);
        short k10 = k(k(m11, m10), m(m11));
        return k(m10, m(k(m(m(m(k10))), k10)));
    }

    public static long j(long j10) {
        long n10 = n(j10);
        long n11 = n(n10);
        long l10 = l(l(n11, n10), n(n11));
        return l(n10, n(l(n(n(n(l10))), l10)));
    }

    public static short k(short s10, short s11) {
        short s12 = (short) (s10 & 15);
        short s13 = (short) ((s10 >>> 4) & 255);
        short s14 = (short) (s11 & 15);
        short s15 = (short) ((s11 >>> 4) & 255);
        short c10 = c(s12, s14);
        short c11 = c(s13, s15);
        return (short) ((((((short) (c((short) (s13 ^ s12), (short) (s15 ^ s14)) ^ c10)) << 4) ^ c10) ^ d(c11)) & 255);
    }

    public static long l(long j10, long j11) {
        long f10 = f(j10, j11);
        long j12 = 1085102592571150095L & f10;
        return (f(((j10 ^ (j10 << 4)) & (-1085102592571150096L)) ^ ((f10 & (-1085102592571150096L)) >>> 4), ((j11 ^ (j11 << 4)) & (-1085102592571150096L)) ^ 578721382704613384L) ^ (j12 << 4)) ^ j12;
    }

    public static short m(short s10) {
        short s11 = (short) (s10 & 15);
        short g10 = g((short) ((s10 >>> 4) & 255));
        return (short) ((((g10 << 4) ^ d(g10)) ^ g(s11)) & 255);
    }

    public static long n(long j10) {
        long h10 = h(j10);
        return h10 ^ (e((-1085102592571150096L) & h10) >>> 4);
    }

    public static short o(short s10, short s11) {
        return (short) (((p(s10) * (s11 >>> 1)) ^ ((s11 & 1) * s10)) & 255);
    }

    public static short p(short s10) {
        return (short) ((((s10 >>> 1) * 7) ^ (s10 << 1)) & 255);
    }

    public static long q(long j10) {
        long j11 = C15316b.f109661b & j10;
        long j12 = j10 & C15316b.f109662c;
        return (j12 >>> 1) ^ ((j11 << 1) ^ j12);
    }

    public static short r(short s10) {
        int i10 = (s10 - 2) >>> 1;
        return (short) ((((s10 - 1) & (~i10)) | ((s10 * 3) & i10)) & 255);
    }

    public static long s(long j10, long j11) {
        long j12 = (((j10 << 1) & j11) ^ ((j11 << 1) & j10)) & C15316b.f109662c;
        long j13 = j10 & j11;
        return ((j13 & C15316b.f109662c) >>> 1) ^ (j13 ^ j12);
    }

    public static short t(short s10) {
        return (short) ((s10 ^ (s10 >>> 1)) & 255);
    }

    public static long u(long j10) {
        return j10 ^ ((C15316b.f109662c & j10) >>> 1);
    }

    public static short v(short s10) {
        return (short) (f96533b[s10] & 255);
    }

    public static long w(long j10) {
        return j(j10);
    }

    public static short x(short s10, short s11) {
        return (short) (f96532a[s10][s11] & 255);
    }

    public static long y(long j10, long j11) {
        return l(j10, j11);
    }
}
