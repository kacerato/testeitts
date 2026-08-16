package fl;

import java.security.SecureRandom;
import java.util.Arrays;
import org.bouncycastle.util.p;

public class l {

    public long[] f86543a;

    public int f86544b;

    public l() {
        this.f86544b = 0;
    }

    public void A(int i10, int i11) {
        int i12 = i10 + this.f86544b;
        Arrays.fill(this.f86543a, i12, i11 + i12, 0L);
    }

    public void B(int i10, l lVar, int i11, l lVar2, int i12, int i13) {
        int i14 = i10 + this.f86544b;
        int i15 = i11 + lVar.f86544b;
        int i16 = i12 + lVar2.f86544b;
        int i17 = 0;
        while (i17 < i13) {
            this.f86543a[i14] = lVar.f86543a[i15] ^ lVar2.f86543a[i16];
            i17++;
            i14++;
            i16++;
            i15++;
        }
    }

    public void C(l lVar, l lVar2, int i10) {
        int i11 = this.f86544b;
        int i12 = lVar.f86544b;
        int i13 = lVar2.f86544b;
        int i14 = 0;
        while (i14 < i10) {
            this.f86543a[i11] = lVar.f86543a[i12] ^ lVar2.f86543a[i13];
            i14++;
            i11++;
            i13++;
            i12++;
        }
    }

    public void D(l lVar, l lVar2, long j10, int i10) {
        int i11 = this.f86544b;
        int i12 = lVar.f86544b;
        int i13 = lVar2.f86544b;
        int i14 = 0;
        while (i14 < i10) {
            long[] jArr = this.f86543a;
            long[] jArr2 = lVar.f86543a;
            long j11 = jArr2[i12];
            long[] jArr3 = lVar2.f86543a;
            long j12 = (j11 ^ jArr3[i13]) & j10;
            jArr[i11] = j12;
            jArr2[i12] = j12 ^ jArr2[i12];
            jArr3[i13] = jArr3[i13] ^ jArr[i11];
            i14++;
            i13++;
            i11++;
            i12++;
        }
    }

    public void E(m mVar, int i10) {
        int i11 = mVar.f86545c;
        if (i11 == 0) {
            System.arraycopy(mVar.f86543a, mVar.f86544b, this.f86543a, this.f86544b, i10);
            return;
        }
        int i12 = (8 - i11) << 3;
        int i13 = i11 << 3;
        int i14 = this.f86544b;
        int i15 = mVar.f86544b;
        int i16 = 0;
        while (i16 < i10) {
            long[] jArr = this.f86543a;
            long[] jArr2 = mVar.f86543a;
            long j10 = jArr2[i15] >>> i13;
            i15++;
            jArr[i14] = j10 ^ (jArr2[i15] << i12);
            i16++;
            i14++;
        }
    }

    public void F(m mVar, int i10, int i11) {
        int i12 = i11 & 63;
        int i13 = 64 - i12;
        int i14 = this.f86544b;
        int i15 = mVar.f86544b;
        int i16 = mVar.f86545c;
        int i17 = 0;
        if (i16 == 0) {
            while (i17 < i10) {
                long[] jArr = this.f86543a;
                long[] jArr2 = mVar.f86543a;
                long j10 = jArr2[i15] >>> i12;
                i15++;
                jArr[i14] = j10 ^ (jArr2[i15] << i13);
                i17++;
                i14++;
            }
            return;
        }
        int i18 = i16 << 3;
        int i19 = (8 - i16) << 3;
        while (i17 < i10) {
            long[] jArr3 = this.f86543a;
            long[] jArr4 = mVar.f86543a;
            long j11 = jArr4[i15] >>> i18;
            int i20 = i15 + 1;
            long j12 = jArr4[i20];
            jArr3[i14] = ((j11 | (j12 << i19)) >>> i12) ^ (((j12 >>> i18) | (jArr4[i15 + 2] << i19)) << i13);
            i17++;
            i14++;
            i15 = i20;
        }
    }

    public void G(m mVar, int i10, int i11) {
        int i12 = i11 & 63;
        int i13 = 64 - i12;
        int i14 = this.f86544b;
        int i15 = mVar.f86544b;
        int i16 = mVar.f86545c;
        int i17 = 0;
        if (i16 == 0) {
            while (i17 < i10) {
                long[] jArr = mVar.f86543a;
                if (i15 >= jArr.length - 1) {
                    break;
                }
                long[] jArr2 = this.f86543a;
                long j10 = jArr[i15] >>> i12;
                i15++;
                jArr2[i14] = j10 ^ (jArr[i15] << i13);
                i17++;
                i14++;
            }
            if (i17 < i10) {
                this.f86543a[i14] = mVar.f86543a[i15] >>> i12;
                return;
            }
            return;
        }
        int i18 = i16 << 3;
        int i19 = (8 - i16) << 3;
        while (i17 < i10) {
            long[] jArr3 = mVar.f86543a;
            if (i15 >= jArr3.length - 2) {
                break;
            }
            long[] jArr4 = this.f86543a;
            long j11 = jArr3[i15] >>> i18;
            int i20 = i15 + 1;
            long j12 = jArr3[i20];
            jArr4[i14] = ((j11 | (j12 << i19)) >>> i12) ^ (((j12 >>> i18) | (jArr3[i15 + 2] << i19)) << i13);
            i17++;
            i14++;
            i15 = i20;
        }
        if (i17 < i10) {
            long[] jArr5 = this.f86543a;
            long[] jArr6 = mVar.f86543a;
            long j13 = jArr6[i15] >>> i18;
            long j14 = jArr6[i15 + 1];
            jArr5[i14] = ((j14 >>> i18) << i13) ^ (((j14 << i19) | j13) >>> i12);
        }
    }

    public void H(int i10, l lVar, int i11, int i12, int i13) {
        int i14 = 64 - i13;
        int i15 = i10 + this.f86544b;
        int i16 = i11 + lVar.f86544b;
        int i17 = 0;
        while (i17 < i12) {
            long[] jArr = this.f86543a;
            long[] jArr2 = lVar.f86543a;
            long j10 = jArr2[i16] >>> i14;
            i16++;
            jArr[i15] = j10 ^ (jArr2[i16] << i13);
            i17++;
            i15++;
        }
    }

    public int I(long j10, int i10, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            this.f86543a[this.f86544b + i10] = -((j10 >>> i12) & 1);
            i12++;
            i10++;
        }
        return i10;
    }

    public void J(int i10, long j10) {
        long[] jArr = this.f86543a;
        int i11 = this.f86544b + i10;
        jArr[i11] = jArr[i11] ^ j10;
    }

    public void K(long j10) {
        long[] jArr = this.f86543a;
        int i10 = this.f86544b;
        jArr[i10] = j10 ^ jArr[i10];
    }

    public void L(l lVar, int i10, int i11) {
        int i12 = this.f86544b;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12;
            int i15 = 0;
            while (i15 < i10) {
                long[] jArr = this.f86543a;
                long j10 = jArr[i14];
                long[] jArr2 = lVar.f86543a;
                int i16 = lVar.f86544b;
                lVar.f86544b = i16 + 1;
                jArr[i14] = j10 ^ jArr2[i16];
                i15++;
                i14++;
            }
        }
        this.f86544b += i10;
    }

    public void M(l lVar, int i10, int i11) {
        int i12 = this.f86544b;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i12;
            int i15 = 0;
            while (i15 < i10) {
                long[] jArr = this.f86543a;
                long j10 = jArr[i14];
                long[] jArr2 = lVar.f86543a;
                int i16 = lVar.f86544b;
                lVar.f86544b = i16 + 1;
                jArr[i14] = j10 ^ jArr2[i16];
                i15++;
                i14++;
            }
        }
    }

    public void N(int i10, l lVar, int i11, int i12) {
        int i13 = i10 + this.f86544b;
        int i14 = i11 + lVar.f86544b;
        int i15 = 0;
        while (i15 < i12) {
            long[] jArr = this.f86543a;
            jArr[i13] = jArr[i13] ^ lVar.f86543a[i14];
            i15++;
            i13++;
            i14++;
        }
    }

    public void O(int i10, m mVar, int i11, int i12) {
        int i13 = i10 + this.f86544b;
        int i14 = i11 + mVar.f86544b;
        int i15 = mVar.f86545c;
        int i16 = 0;
        if (i15 == 0) {
            while (i16 < i12) {
                long[] jArr = this.f86543a;
                jArr[i13] = jArr[i13] ^ mVar.f86543a[i14];
                i16++;
                i13++;
                i14++;
            }
            return;
        }
        int i17 = i15 << 3;
        int i18 = (8 - i15) << 3;
        while (i16 < i12) {
            long[] jArr2 = this.f86543a;
            long j10 = jArr2[i13];
            long[] jArr3 = mVar.f86543a;
            long j11 = jArr3[i14] >>> i17;
            i14++;
            jArr2[i13] = j10 ^ (j11 | (jArr3[i14] << i18));
            i16++;
            i13++;
        }
    }

    public void P(l lVar, int i10) {
        int i11 = this.f86544b;
        int i12 = lVar.f86544b;
        int i13 = 0;
        while (i13 < i10) {
            long[] jArr = this.f86543a;
            jArr[i11] = jArr[i11] ^ lVar.f86543a[i12];
            i13++;
            i11++;
            i12++;
        }
    }

    public void Q(l lVar, int i10, int i11) {
        int i12 = this.f86544b;
        int i13 = i10 + lVar.f86544b;
        int i14 = 0;
        while (i14 < i11) {
            long[] jArr = this.f86543a;
            jArr[i12] = jArr[i12] ^ lVar.f86543a[i13];
            i14++;
            i12++;
            i13++;
        }
    }

    public void R(l lVar, int i10, long j10) {
        int i11 = this.f86544b;
        int i12 = lVar.f86544b;
        int i13 = 0;
        while (i13 < i10) {
            long[] jArr = this.f86543a;
            jArr[i11] = jArr[i11] ^ (lVar.f86543a[i12] & j10);
            i13++;
            i11++;
            i12++;
        }
    }

    public void S(l lVar, int i10, long j10) {
        int i11 = this.f86544b;
        int i12 = 0;
        while (i12 < i10) {
            long[] jArr = this.f86543a;
            long j11 = jArr[i11];
            long[] jArr2 = lVar.f86543a;
            int i13 = lVar.f86544b;
            lVar.f86544b = i13 + 1;
            jArr[i11] = j11 ^ (jArr2[i13] & j10);
            i12++;
            i11++;
        }
    }

    public void T(int i10, l lVar, int i11, l lVar2, int i12, int i13) {
        int i14 = i10 + this.f86544b;
        int i15 = i11 + lVar.f86544b;
        int i16 = i12 + lVar2.f86544b;
        int i17 = 0;
        while (i17 < i13) {
            long[] jArr = this.f86543a;
            jArr[i14] = (lVar.f86543a[i15] ^ lVar2.f86543a[i16]) ^ jArr[i14];
            i17++;
            i14++;
            i16++;
            i15++;
        }
    }

    public void U(l lVar, int i10) {
        int i11 = lVar.f86544b;
        int i12 = 0;
        while (i12 < i10) {
            long[] jArr = this.f86543a;
            int i13 = this.f86544b;
            this.f86544b = i13 + 1;
            jArr[i13] = jArr[i13] ^ lVar.f86543a[i11];
            i12++;
            i11++;
        }
    }

    public void V(l lVar) {
        long[] jArr = lVar.f86543a;
        int i10 = lVar.f86544b;
        lVar.f86543a = this.f86543a;
        lVar.f86544b = this.f86544b;
        this.f86543a = jArr;
        this.f86544b = i10;
    }

    public byte[] W(int i10) {
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) (this.f86543a[this.f86544b + (i11 >>> 3)] >>> ((i11 & 7) << 3));
        }
        return bArr;
    }

    public void a(int i10) {
        this.f86544b = i10;
    }

    public void b(l lVar) {
        this.f86543a = lVar.f86543a;
        this.f86544b = lVar.f86544b;
    }

    public void c(l lVar, int i10) {
        this.f86543a = lVar.f86543a;
        this.f86544b = lVar.f86544b + i10;
    }

    public void d(int i10, l lVar, int i11, int i12) {
        System.arraycopy(lVar.f86543a, lVar.f86544b + i11, this.f86543a, this.f86544b + i10, i12);
    }

    public void e(l lVar, int i10) {
        System.arraycopy(lVar.f86543a, lVar.f86544b, this.f86543a, this.f86544b, i10);
    }

    public void f(int i10, byte[] bArr, int i11, int i12) {
        long[] jArr;
        int i13;
        int i14 = this.f86544b + i10;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            jArr = this.f86543a;
            if (i14 >= jArr.length || (i13 = i16 + 8) > i12) {
                break;
            }
            jArr[i14] = p.x(bArr, i11);
            i11 += 8;
            i14++;
            i16 = i13;
        }
        if (i16 >= i12 || i14 >= jArr.length) {
            return;
        }
        jArr[i14] = 0;
        while (i15 < 8 && i16 < i12) {
            long[] jArr2 = this.f86543a;
            jArr2[i14] = jArr2[i14] | ((bArr[i11] & 255) << (i15 << 3));
            i15++;
            i11++;
            i16++;
        }
    }

    public void g(int i10, SecureRandom secureRandom, int i11) {
        byte[] bArr = new byte[i11];
        secureRandom.nextBytes(bArr);
        f(i10, bArr, 0, i11);
    }

    public long h() {
        return this.f86543a[this.f86544b];
    }

    public long i(int i10) {
        return this.f86543a[this.f86544b + i10];
    }

    public long[] j() {
        return this.f86543a;
    }

    public int k(int i10, int i11) {
        int i12 = this.f86544b;
        int i13 = 0;
        long j10 = 0;
        while (i11 > 0) {
            int i14 = i12 + 1;
            long j11 = this.f86543a[i12];
            int i15 = 1;
            while (i15 < i10) {
                j11 |= this.f86543a[i14];
                i15++;
                i14++;
            }
            j10 |= j.d(j11);
            i13 = (int) (i13 + j10);
            i11--;
            i12 = i14;
        }
        return i13;
    }

    public long l(int i10, l lVar, int i11, int i12) {
        int i13 = i10 + this.f86544b;
        int i14 = i11 + lVar.f86544b;
        int i15 = i13 + 1;
        int i16 = i14 + 1;
        long j10 = this.f86543a[i13] & lVar.f86543a[i14];
        int i17 = 1;
        while (i17 < i12) {
            j10 ^= this.f86543a[i15] & lVar.f86543a[i16];
            i17++;
            i16++;
            i15++;
        }
        return j10;
    }

    public int m() {
        return this.f86544b;
    }

    public int n() {
        return this.f86543a.length - this.f86544b;
    }

    public void o() {
        this.f86544b = 0;
    }

    public int p(int i10, int i11) {
        long i12 = i(i10);
        for (int i13 = 1; i13 < i11; i13++) {
            i12 |= i(i10 + i13);
        }
        return (int) j.c(i12);
    }

    public int q(l lVar, int i10) {
        int i11 = lVar.f86544b;
        int i12 = this.f86544b;
        int i13 = 0;
        while (i13 < i10) {
            int i14 = i12 + 1;
            int i15 = i11 + 1;
            if (this.f86543a[i12] != lVar.f86543a[i11]) {
                return 0;
            }
            i13++;
            i11 = i15;
            i12 = i14;
        }
        return 1;
    }

    public void r(int i10) {
        this.f86544b += i10;
    }

    public void s() {
        this.f86544b++;
    }

    public int t(int i10, int i11, int i12) {
        while (p(i10 * i12, i12) != 0 && i10 >= i11) {
            i10--;
        }
        return i10;
    }

    public void u(int i10, long j10) {
        this.f86543a[this.f86544b + i10] = j10;
    }

    public void v(long j10) {
        this.f86543a[this.f86544b] = j10;
    }

    public void w(int i10, int i11) {
        int i12 = this.f86544b + i10;
        int i13 = i12 + 1;
        this.f86543a[i12] = 1;
        int i14 = 1;
        while (i14 < i11) {
            this.f86543a[i13] = 0;
            i14++;
            i13++;
        }
    }

    public void x(int i10, long j10) {
        long[] jArr = this.f86543a;
        int i11 = this.f86544b + i10;
        jArr[i11] = jArr[i11] & j10;
    }

    public void y(long j10) {
        long[] jArr = this.f86543a;
        int i10 = this.f86544b;
        jArr[i10] = j10 & jArr[i10];
    }

    public void z(int i10) {
        this.f86543a[this.f86544b + i10] = 0;
    }

    public l(int i10) {
        this.f86543a = new long[i10];
        this.f86544b = 0;
    }

    public l(l lVar) {
        this.f86543a = lVar.f86543a;
        this.f86544b = lVar.f86544b;
    }

    public l(l lVar, int i10) {
        this.f86543a = lVar.f86543a;
        this.f86544b = lVar.f86544b + i10;
    }
}
