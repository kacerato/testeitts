package Zk;

import Ii.N;
import Ii.Q;
import java.security.SecureRandom;

public class a {

    public int f31467a;

    public int f31468b;

    public int f31469c;

    public int f31470d;

    public int f31471e;

    public int f31472f;

    public final j f31473g;

    public int f31474h;

    public int f31475i;

    public int f31476j;

    public a(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f31467a = i10;
        this.f31468b = i11;
        this.f31470d = i12;
        this.f31471e = i14;
        this.f31472f = i15;
        this.f31469c = i11 / 2;
        this.f31474h = i13 / 8;
        this.f31475i = (i10 + 7) >>> 3;
        this.f31476j = ((i10 * 2) + 7) >>> 3;
        this.f31473g = new j(i10);
    }

    public static int t(int i10, double d10, double d11, int i11) {
        return Math.max(i11, (int) Math.floor((d10 * i10) + d11));
    }

    public final void a(byte[] bArr, byte[] bArr2, int i10, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        h(iArr3, bArr, bArr5);
        int i11 = bArr5[0] & 255;
        int i12 = ((i11 - i10) >> 31) + 1;
        int i13 = ((i11 - (i10 - this.f31472f)) >> 31) + 1;
        byte b10 = (byte) i12;
        bArr2[0] = (byte) (bArr2[0] ^ b10);
        bArr3[0] = b10;
        bArr4[0] = (byte) i13;
        int i14 = 1;
        while (true) {
            int i15 = this.f31467a;
            if (i14 >= i15) {
                break;
            }
            int i16 = bArr5[i14] & 255;
            int i17 = ((i16 - i10) >> 31) + 1;
            int i18 = ((i16 - (i10 - this.f31472f)) >> 31) + 1;
            int i19 = i15 - i14;
            byte b11 = (byte) i17;
            bArr2[i19] = (byte) (bArr2[i19] ^ b11);
            bArr3[i14] = b11;
            bArr4[i14] = (byte) i18;
            i14++;
        }
        h(iArr4, bArr, bArr5);
        int i20 = bArr5[0] & 255;
        int i21 = ((i20 - i10) >> 31) + 1;
        int i22 = ((i20 - (i10 - this.f31472f)) >> 31) + 1;
        int i23 = this.f31467a;
        byte b12 = (byte) i21;
        bArr2[i23] = (byte) (bArr2[i23] ^ b12);
        bArr3[i23] = b12;
        bArr4[i23] = (byte) i22;
        int i24 = 1;
        while (true) {
            int i25 = this.f31467a;
            if (i24 >= i25) {
                break;
            }
            int i26 = bArr5[i24] & 255;
            int i27 = ((i26 - i10) >> 31) + 1;
            int i28 = ((i26 - (i10 - this.f31472f)) >> 31) + 1;
            int i29 = (i25 + i25) - i24;
            byte b13 = (byte) i27;
            bArr2[i29] = (byte) (bArr2[i29] ^ b13);
            bArr3[i25 + i24] = b13;
            bArr4[i25 + i24] = (byte) i28;
            i24++;
        }
        for (int i30 = 0; i30 < this.f31467a * 2; i30++) {
            q(bArr, i30, iArr, iArr2, bArr3[i30] != 0);
        }
    }

    public final void b(byte[] bArr, byte[] bArr2, int i10, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, byte[] bArr3) {
        int[] iArr5 = new int[this.f31467a * 2];
        h(iArr3, bArr, bArr3);
        int i11 = (((bArr3[0] & 255) - i10) >> 31) + 1;
        bArr2[0] = (byte) (bArr2[0] ^ ((byte) i11));
        iArr5[0] = i11;
        int i12 = 1;
        while (true) {
            int i13 = this.f31467a;
            if (i12 >= i13) {
                break;
            }
            int i14 = (((bArr3[i12] & 255) - i10) >> 31) + 1;
            int i15 = i13 - i12;
            bArr2[i15] = (byte) (bArr2[i15] ^ ((byte) i14));
            iArr5[i12] = i14;
            i12++;
        }
        h(iArr4, bArr, bArr3);
        int i16 = (((bArr3[0] & 255) - i10) >> 31) + 1;
        int i17 = this.f31467a;
        bArr2[i17] = (byte) (bArr2[i17] ^ ((byte) i16));
        iArr5[i17] = i16;
        int i18 = 1;
        while (true) {
            int i19 = this.f31467a;
            if (i18 >= i19) {
                break;
            }
            int i20 = (((bArr3[i18] & 255) - i10) >> 31) + 1;
            int i21 = (i19 + i19) - i18;
            bArr2[i21] = (byte) (bArr2[i21] ^ ((byte) i20));
            iArr5[i19 + i18] = i20;
            i18++;
        }
        for (int i22 = 0; i22 < this.f31467a * 2; i22++) {
            q(bArr, i22, iArr, iArr2, iArr5[i22] == 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    public final void c(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int[] iArr5 = new int[this.f31467a * 2];
        int i11 = 0;
        while (true) {
            if (i11 >= this.f31467a) {
                break;
            }
            if (bArr3[i11] == 1) {
                ?? r10 = g(iArr3, bArr, i11) < i10 ? 0 : 1;
                u(bArr2, i11, r10);
                iArr5[i11] = r10;
            }
            i11++;
        }
        int i12 = 0;
        while (true) {
            int i13 = this.f31467a;
            if (i12 >= i13) {
                break;
            }
            if (bArr3[i13 + i12] == 1) {
                ?? r42 = g(iArr4, bArr, i12) >= i10 ? 1 : 0;
                u(bArr2, this.f31467a + i12, r42);
                iArr5[this.f31467a + i12] = r42;
            }
            i12++;
        }
        for (int i14 = 0; i14 < this.f31467a * 2; i14++) {
            q(bArr, i14, iArr, iArr2, iArr5[i14] == 1);
        }
    }

    public final byte[] d(byte[] bArr, int[] iArr, int[] iArr2) {
        byte[] bArr2 = new byte[this.f31467a * 2];
        int[] o10 = o(iArr);
        int[] o11 = o(iArr2);
        int i10 = this.f31467a;
        byte[] bArr3 = new byte[i10 * 2];
        byte[] bArr4 = new byte[i10];
        byte[] bArr5 = new byte[i10 * 2];
        a(bArr, bArr2, s(k.e(bArr), this.f31467a), iArr, iArr2, o10, o11, bArr3, bArr5, bArr4);
        c(bArr, bArr2, bArr3, ((this.f31469c + 1) / 2) + 1, iArr, iArr2, o10, o11);
        c(bArr, bArr2, bArr5, ((this.f31469c + 1) / 2) + 1, iArr, iArr2, o10, o11);
        for (int i11 = 1; i11 < this.f31471e; i11++) {
            org.bouncycastle.util.a.e0(bArr3, (byte) 0);
            b(bArr, bArr2, s(k.e(bArr), this.f31467a), iArr, iArr2, o10, o11, bArr4);
        }
        if (k.e(bArr) == 0) {
            return bArr2;
        }
        return null;
    }

    public final byte[] e(byte[] bArr, byte[] bArr2) {
        long[] d10 = this.f31473g.d();
        long[] d11 = this.f31473g.d();
        this.f31473g.f(bArr, d10);
        this.f31473g.f(bArr2, d11);
        this.f31473g.s(d10, d11, d10);
        return this.f31473g.g(d10);
    }

    public final void f(int[] iArr, byte[] bArr) {
        int i10;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f31475i; i12++) {
            for (int i13 = 0; i13 < 8 && (i10 = (i12 * 8) + i13) != this.f31467a; i13++) {
                int i14 = (bArr[i12] >> i13) & 1;
                int i15 = -i14;
                iArr[i11] = (i10 & i15) | ((~i15) & iArr[i11]);
                i11 = (i11 + i14) % this.f31469c;
            }
        }
    }

    public final int g(int[] iArr, byte[] bArr, int i10) {
        int i11 = this.f31469c - 4;
        int i12 = 0;
        int i13 = 0;
        while (i12 <= i11) {
            int i14 = iArr[i12] + i10;
            int i15 = this.f31467a;
            int i16 = i14 - i15;
            int i17 = (iArr[i12 + 1] + i10) - i15;
            int i18 = (iArr[i12 + 2] + i10) - i15;
            int i19 = (iArr[i12 + 3] + i10) - i15;
            i13 = i13 + (bArr[i16 + ((i16 >> 31) & i15)] & 255) + (bArr[i17 + ((i17 >> 31) & i15)] & 255) + (bArr[i18 + ((i18 >> 31) & i15)] & 255) + (bArr[i19 + (i15 & (i19 >> 31))] & 255);
            i12 += 4;
        }
        while (i12 < this.f31469c) {
            int i20 = iArr[i12] + i10;
            int i21 = this.f31467a;
            int i22 = i20 - i21;
            i13 += bArr[i22 + (i21 & (i22 >> 31))] & 255;
            i12++;
        }
        return i13;
    }

    public final void h(int[] iArr, byte[] bArr, byte[] bArr2) {
        int i10 = iArr[0];
        int i11 = this.f31467a - i10;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        System.arraycopy(bArr, 0, bArr2, i11, i10);
        for (int i12 = 1; i12 < this.f31469c; i12++) {
            int i13 = iArr[i12];
            int i14 = this.f31467a - i13;
            int i15 = i14 - 4;
            int i16 = 0;
            while (i16 <= i15) {
                int i17 = i13 + i16;
                bArr2[i16] = (byte) (bArr2[i16] + (bArr[i17] & 255));
                int i18 = i16 + 1;
                bArr2[i18] = (byte) (bArr2[i18] + (bArr[i17 + 1] & 255));
                int i19 = i16 + 2;
                bArr2[i19] = (byte) (bArr2[i19] + (bArr[i17 + 2] & 255));
                int i20 = i16 + 3;
                bArr2[i20] = (byte) (bArr2[i20] + (bArr[i17 + 3] & 255));
                i16 += 4;
            }
            while (i16 < i14) {
                bArr2[i16] = (byte) (bArr2[i16] + (bArr[i13 + i16] & 255));
                i16++;
            }
            int i21 = this.f31467a - 4;
            int i22 = i14;
            while (i22 <= i21) {
                bArr2[i22] = (byte) (bArr2[i22] + (bArr[i22 - i14] & 255));
                int i23 = i22 + 1;
                bArr2[i23] = (byte) (bArr2[i23] + (bArr[i23 - i14] & 255));
                int i24 = i22 + 2;
                bArr2[i24] = (byte) (bArr2[i24] + (bArr[i24 - i14] & 255));
                int i25 = i22 + 3;
                bArr2[i25] = (byte) (bArr2[i25] + (bArr[i25 - i14] & 255));
                i22 += 4;
            }
            while (i22 < this.f31467a) {
                bArr2[i22] = (byte) (bArr2[i22] + (bArr[i22 - i14] & 255));
                i22++;
            }
        }
    }

    public void i(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        int i10 = this.f31469c;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        f(iArr, bArr2);
        f(iArr2, bArr3);
        byte[] d10 = d(e(bArr5, bArr2), iArr, iArr2);
        byte[] bArr7 = new byte[this.f31475i * 2];
        k.c(bArr7, d10, 0, this.f31467a * 2);
        int i11 = this.f31475i;
        byte[] bArr8 = new byte[i11];
        byte[] bArr9 = new byte[i11];
        r(bArr7, bArr8, bArr9);
        byte[] bArr10 = new byte[this.f31474h];
        m(bArr8, bArr9, bArr10);
        org.bouncycastle.util.c.d(this.f31474h, bArr6, bArr10);
        byte[] k10 = k(bArr10);
        int i12 = this.f31476j;
        if (org.bouncycastle.util.a.f(bArr7, 0, i12, k10, 0, i12)) {
            l(bArr10, bArr5, bArr6, bArr);
        } else {
            l(bArr4, bArr5, bArr6, bArr);
        }
    }

    public void j(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[this.f31474h];
        secureRandom.nextBytes(bArr5);
        byte[] k10 = k(bArr5);
        int i10 = this.f31475i;
        byte[] bArr6 = new byte[i10];
        byte[] bArr7 = new byte[i10];
        r(k10, bArr6, bArr7);
        long[] d10 = this.f31473g.d();
        long[] d11 = this.f31473g.d();
        this.f31473g.f(bArr6, d10);
        this.f31473g.f(bArr7, d11);
        long[] d12 = this.f31473g.d();
        this.f31473g.f(bArr4, d12);
        this.f31473g.s(d12, d11, d12);
        this.f31473g.a(d12, d10, d12);
        this.f31473g.h(d12, bArr);
        m(bArr6, bArr7, bArr2);
        org.bouncycastle.util.c.d(this.f31474h, bArr5, bArr2);
        l(bArr5, bArr, bArr2, bArr3);
    }

    public final byte[] k(byte[] bArr) {
        byte[] bArr2 = new byte[this.f31475i * 2];
        Q q10 = new Q(256);
        q10.update(bArr, 0, bArr.length);
        k.d(bArr2, this.f31467a * 2, this.f31470d, q10);
        return bArr2;
    }

    public final void l(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[48];
        N n10 = new N(384);
        n10.update(bArr, 0, bArr.length);
        n10.update(bArr2, 0, bArr2.length);
        n10.update(bArr3, 0, bArr3.length);
        n10.c(bArr5, 0);
        System.arraycopy(bArr5, 0, bArr4, 0, this.f31474h);
    }

    public final void m(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[48];
        N n10 = new N(384);
        n10.update(bArr, 0, bArr.length);
        n10.update(bArr2, 0, bArr2.length);
        n10.c(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr3, 0, this.f31474h);
    }

    public void n(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, SecureRandom secureRandom) {
        byte[] bArr5 = new byte[64];
        secureRandom.nextBytes(bArr5);
        Q q10 = new Q(256);
        q10.update(bArr5, 0, this.f31474h);
        k.d(bArr, this.f31467a, this.f31469c, q10);
        k.d(bArr2, this.f31467a, this.f31469c, q10);
        long[] d10 = this.f31473g.d();
        long[] d11 = this.f31473g.d();
        this.f31473g.f(bArr, d10);
        this.f31473g.f(bArr2, d11);
        long[] d12 = this.f31473g.d();
        this.f31473g.r(d10, d12);
        this.f31473g.s(d12, d11, d12);
        this.f31473g.h(d12, bArr4);
        System.arraycopy(bArr5, this.f31474h, bArr3, 0, bArr3.length);
    }

    public final int[] o(int[] iArr) {
        int[] iArr2 = new int[this.f31469c];
        int i10 = 0;
        if (iArr[0] != 0) {
            while (true) {
                int i11 = this.f31469c;
                if (i10 >= i11) {
                    break;
                }
                iArr2[i10] = this.f31467a - iArr[(i11 - 1) - i10];
                i10++;
            }
        } else {
            iArr2[0] = 0;
            int i12 = 1;
            while (true) {
                int i13 = this.f31469c;
                if (i12 >= i13) {
                    break;
                }
                iArr2[i12] = this.f31467a - iArr[i13 - i12];
                i12++;
            }
        }
        return iArr2;
    }

    public int p() {
        return this.f31474h;
    }

    public final void q(byte[] bArr, int i10, int[] iArr, int[] iArr2, boolean z10) {
        int i11 = 0;
        if (i10 < this.f31467a) {
            while (i11 < this.f31469c) {
                int i12 = iArr[i11];
                if (i12 <= i10) {
                    int i13 = i10 - i12;
                    bArr[i13] = (byte) (bArr[i13] ^ (z10 ? 1 : 0));
                } else {
                    int i14 = (this.f31467a + i10) - i12;
                    bArr[i14] = (byte) (bArr[i14] ^ (z10 ? 1 : 0));
                }
                i11++;
            }
            return;
        }
        while (i11 < this.f31469c) {
            int i15 = iArr2[i11];
            int i16 = this.f31467a;
            if (i15 <= i10 - i16) {
                int i17 = (i10 - i16) - i15;
                bArr[i17] = (byte) (bArr[i17] ^ (z10 ? 1 : 0));
            } else {
                int i18 = (i16 - i15) + (i10 - i16);
                bArr[i18] = (byte) (bArr[i18] ^ (z10 ? 1 : 0));
            }
            i11++;
        }
    }

    public final void r(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10 = this.f31467a & 7;
        int i11 = 0;
        System.arraycopy(bArr, 0, bArr2, 0, this.f31475i - 1);
        int i12 = this.f31475i;
        byte b10 = bArr[i12 - 1];
        byte b11 = (byte) ((-1) << i10);
        bArr2[i12 - 1] = (byte) ((~b11) & b10);
        byte b12 = (byte) (b10 & b11);
        while (true) {
            int i13 = this.f31475i;
            if (i11 >= i13) {
                return;
            }
            byte b13 = bArr[i13 + i11];
            bArr3[i11] = (byte) (((b12 & 255) >>> i10) | (b13 << (8 - i10)));
            i11++;
            b12 = b13;
        }
    }

    public final int s(int i10, int i11) {
        if (i11 == 12323) {
            return t(i10, 0.0069722d, 13.53d, 36);
        }
        if (i11 == 24659) {
            return t(i10, 0.005265d, 15.2588d, 52);
        }
        if (i11 == 40973) {
            return t(i10, 0.00402312d, 17.8785d, 69);
        }
        throw new IllegalArgumentException();
    }

    public final void u(byte[] bArr, int i10, boolean z10) {
        int i11;
        if (i10 != 0 && i10 != (i11 = this.f31467a)) {
            i10 = i10 > i11 ? ((i11 * 2) - i10) + i11 : i11 - i10;
        }
        bArr[i10] = (byte) ((z10 ? 1 : 0) ^ bArr[i10]);
    }
}
