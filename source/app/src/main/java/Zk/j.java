package Zk;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.util.p;
import sk.AbstractC15317c;
import sk.AbstractC15329o;
import sk.C15316b;

public class j {

    public static final int f31504e = 64;

    public final int f31505a;

    public final int f31506b;

    public final int f31507c;

    public final Map<Integer, Integer> f31508d;

    public j(int i10) {
        HashMap hashMap = new HashMap();
        this.f31508d = hashMap;
        if (((-65535) & i10) != 1) {
            throw new IllegalArgumentException();
        }
        this.f31505a = i10;
        int i11 = (i10 + 63) >>> 6;
        this.f31506b = i11;
        this.f31507c = i11 * 2;
        j(hashMap, i10);
    }

    public static int i(int i10, int i11, int i12) {
        int i13 = 1;
        while (i12 >= 32) {
            i13 = (int) ((((4294967295L & (i11 * i13)) * i10) + i13) >>> 32);
            i12 -= 32;
        }
        if (i12 <= 0) {
            return i13;
        }
        return (int) ((((4294967295L & ((i11 * i13) & ((-1) >>> (-i12)))) * i10) + i13) >>> i12);
    }

    public static void j(Map<Integer, Integer> map, int i10) {
        int i11;
        int i12 = i10 - 2;
        int d10 = 32 - org.bouncycastle.util.k.d(i12);
        int n10 = AbstractC15317c.n(-i10);
        for (int i13 = 1; i13 < d10; i13++) {
            int i14 = 1 << (i13 - 1);
            if (i14 >= 64 && !map.containsKey(org.bouncycastle.util.k.j(i14))) {
                map.put(org.bouncycastle.util.k.j(i14), org.bouncycastle.util.k.j(i(i10, n10, i14)));
            }
            int i15 = 1 << i13;
            if ((i12 & i15) != 0 && (i11 = (i15 - 1) & i12) >= 64 && !map.containsKey(org.bouncycastle.util.k.j(i11))) {
                map.put(org.bouncycastle.util.k.j(i11), org.bouncycastle.util.k.j(i(i10, n10, i11)));
            }
        }
    }

    public static int m(int i10, int i11, int i12) {
        int i13 = (i11 + i12) - i10;
        return i13 + (i10 & (i13 >> 31));
    }

    public static void o(long[] jArr, long j10, long j11, long[] jArr2, int i10) {
        long j12 = j10;
        jArr[1] = j11;
        for (int i11 = 2; i11 < 16; i11 += 2) {
            long j13 = jArr[i11 >>> 1] << 1;
            jArr[i11] = j13;
            jArr[i11 + 1] = j13 ^ j11;
        }
        int i12 = (int) j12;
        long j14 = jArr[i12 & 15] ^ (jArr[(i12 >>> 4) & 15] << 4);
        long j15 = 0;
        int i13 = 56;
        do {
            int i14 = (int) (j12 >>> i13);
            long j16 = jArr[i14 & 15] ^ (jArr[(i14 >>> 4) & 15] << 4);
            j14 ^= j16 << i13;
            j15 ^= j16 >>> (-i13);
            i13 -= 8;
        } while (i13 > 0);
        for (int i15 = 0; i15 < 7; i15++) {
            j12 = (j12 & (-72340172838076674L)) >>> 1;
            j15 ^= ((j11 << i15) >> 63) & j12;
        }
        jArr2[i10] = jArr2[i10] ^ j14;
        int i16 = i10 + 1;
        jArr2[i16] = jArr2[i16] ^ j15;
    }

    public void a(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i10 = 0; i10 < this.f31506b; i10++) {
            jArr3[i10] = jArr[i10] ^ jArr2[i10];
        }
    }

    public void b(long[] jArr, long[] jArr2) {
        for (int i10 = 0; i10 < this.f31506b; i10++) {
            jArr2[i10] = jArr2[i10] ^ jArr[i10];
        }
    }

    public void c(long[] jArr, long[] jArr2) {
        for (int i10 = 0; i10 < this.f31506b; i10++) {
            jArr2[i10] = jArr[i10];
        }
    }

    public long[] d() {
        return new long[this.f31506b];
    }

    public long[] e() {
        return new long[this.f31507c];
    }

    public void f(byte[] bArr, long[] jArr) {
        int i10 = this.f31505a & 63;
        p.z(bArr, 0, jArr, 0, this.f31506b - 1);
        byte[] bArr2 = new byte[8];
        System.arraycopy(bArr, (this.f31506b - 1) << 3, bArr2, 0, (i10 + 7) >>> 3);
        jArr[this.f31506b - 1] = p.x(bArr2, 0);
    }

    public byte[] g(long[] jArr) {
        byte[] bArr = new byte[this.f31505a];
        bArr[0] = (byte) (jArr[0] & 1);
        int i10 = 1;
        while (true) {
            int i11 = this.f31505a;
            if (i10 >= i11) {
                return bArr;
            }
            bArr[i11 - i10] = (byte) ((jArr[i10 >>> 6] >>> (i10 & 63)) & 1);
            i10++;
        }
    }

    public void h(long[] jArr, byte[] bArr) {
        int i10 = this.f31505a & 63;
        p.K(jArr, 0, this.f31506b - 1, bArr, 0);
        byte[] bArr2 = new byte[8];
        p.J(jArr[this.f31506b - 1], bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, (this.f31506b - 1) << 3, (i10 + 7) >>> 3);
    }

    public int k() {
        return this.f31506b;
    }

    public int l() {
        return this.f31507c;
    }

    public void n(long[] jArr, long[] jArr2, long[] jArr3) {
        int i10;
        long[] jArr4 = new long[16];
        int i11 = 0;
        for (int i12 = 0; i12 < this.f31506b; i12++) {
            o(jArr4, jArr[i12], jArr2[i12], jArr3, i12 << 1);
        }
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        for (int i13 = 1; i13 < this.f31506b; i13++) {
            int i14 = i13 << 1;
            j10 ^= jArr3[i14];
            jArr3[i13] = j10 ^ j11;
            j11 ^= jArr3[i14 + 1];
        }
        long j12 = j10 ^ j11;
        while (true) {
            i10 = this.f31506b;
            if (i11 >= i10) {
                break;
            }
            jArr3[i10 + i11] = jArr3[i11] ^ j12;
            i11++;
        }
        int i15 = i10 - 1;
        for (int i16 = 1; i16 < i15 * 2; i16++) {
            int min = Math.min(i15, i16);
            int i17 = i16 - min;
            for (int i18 = min; i17 < i18; i18--) {
                o(jArr4, jArr[i17] ^ jArr[i18], jArr2[i17] ^ jArr2[i18], jArr3, i16);
                i17++;
            }
        }
    }

    public final void p(long[] jArr, int i10, long[] jArr2) {
        int i11 = this.f31505a;
        int intValue = this.f31508d.get(org.bouncycastle.util.k.j(i10)).intValue();
        int m10 = m(i11, intValue, intValue);
        int m11 = m(i11, m10, m10);
        int m12 = m(i11, m11, m11);
        int i12 = i11 - m12;
        int m13 = m(i11, i12, intValue);
        int m14 = m(i11, i12, m10);
        int m15 = m(i11, m13, m10);
        int m16 = m(i11, i12, m11);
        int m17 = m(i11, m13, m11);
        int m18 = m(i11, m14, m11);
        int m19 = m(i11, m15, m11);
        int i13 = 0;
        while (true) {
            int i14 = this.f31506b;
            if (i13 >= i14) {
                int i15 = i14 - 1;
                jArr2[i15] = jArr2[i15] & ((-1) >>> (-i11));
                return;
            }
            long j10 = 0;
            for (int i16 = 0; i16 < 64; i16 += 8) {
                i12 = m(i11, i12, m12);
                m13 = m(i11, m13, m12);
                m14 = m(i11, m14, m12);
                m15 = m(i11, m15, m12);
                m16 = m(i11, m16, m12);
                m17 = m(i11, m17, m12);
                m18 = m(i11, m18, m12);
                m19 = m(i11, m19, m12);
                j10 = j10 | (((jArr[i12 >>> 6] >>> i12) & 1) << i16) | (((jArr[m13 >>> 6] >>> m13) & 1) << (i16 + 1)) | (((jArr[m14 >>> 6] >>> m14) & 1) << (i16 + 2)) | (((jArr[m15 >>> 6] >>> m15) & 1) << (i16 + 3)) | (((jArr[m16 >>> 6] >>> m16) & 1) << (i16 + 4)) | (((jArr[m17 >>> 6] >>> m17) & 1) << (i16 + 5)) | (((jArr[m18 >>> 6] >>> m18) & 1) << (i16 + 6)) | (((jArr[m19 >>> 6] >>> m19) & 1) << (i16 + 7));
            }
            jArr2[i13] = j10;
            i13++;
        }
    }

    public final void q(long[] jArr, long[] jArr2) {
        C15316b.d(jArr, 0, this.f31506b, jArr2, 0);
    }

    public void r(long[] jArr, long[] jArr2) {
        long[] d10 = d();
        long[] d11 = d();
        long[] d12 = d();
        c(jArr, d10);
        c(jArr, d12);
        int i10 = this.f31505a - 2;
        int d13 = 32 - org.bouncycastle.util.k.d(i10);
        for (int i11 = 1; i11 < d13; i11++) {
            v(d10, 1 << (i11 - 1), d11);
            s(d10, d11, d10);
            int i12 = 1 << i11;
            if ((i10 & i12) != 0) {
                v(d10, (i12 - 1) & i10, d11);
                s(d12, d11, d12);
            }
        }
        u(d12, jArr2);
    }

    public void s(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] e10 = e();
        n(jArr, jArr2, e10);
        t(e10, jArr3);
    }

    public void t(long[] jArr, long[] jArr2) {
        int i10 = 64 - (this.f31505a & 63);
        int i11 = this.f31506b;
        AbstractC15329o.M0(i11, jArr, i11, i10, jArr[i11 - 1], jArr2, 0);
        b(jArr, jArr2);
        int i12 = this.f31506b - 1;
        jArr2[i12] = jArr2[i12] & ((-1) >>> i10);
    }

    public void u(long[] jArr, long[] jArr2) {
        long[] e10 = e();
        q(jArr, e10);
        t(e10, jArr2);
    }

    public void v(long[] jArr, int i10, long[] jArr2) {
        if (i10 >= 64) {
            p(jArr, i10, jArr2);
            return;
        }
        long[] e10 = e();
        q(jArr, e10);
        while (true) {
            t(e10, jArr2);
            i10--;
            if (i10 <= 0) {
                return;
            } else {
                q(jArr2, e10);
            }
        }
    }
}
