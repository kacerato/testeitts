package dl;

public class q {

    public C12952b f84829a = new C12952b();

    public C12956f f84830b = new C12956f();

    public C12954d f84831c = new C12954d();

    public static int a(int i10) {
        return 1 << i10;
    }

    public int b(x xVar, w wVar, short[] sArr, int i10, byte[] bArr, int i11, byte[] bArr2, int i12, byte[] bArr3, int i13, byte[] bArr4, int i14, short[] sArr2, int i15, int i16, C12957g[] c12957gArr, int i17) {
        int a10 = a(i16);
        int i18 = i17 + a10;
        int i19 = i18 + a10;
        int i20 = i19 + a10;
        r(c12957gArr, i18, bArr, i11, i16);
        r(c12957gArr, i17, bArr2, i12, i16);
        r(c12957gArr, i20, bArr3, i13, i16);
        r(c12957gArr, i19, bArr4, i14, i16);
        this.f84830b.a(c12957gArr, i18, i16);
        this.f84830b.a(c12957gArr, i17, i16);
        this.f84830b.a(c12957gArr, i20, i16);
        this.f84830b.a(c12957gArr, i19, i16);
        this.f84830b.w(c12957gArr, i18, i16);
        this.f84830b.w(c12957gArr, i20, i16);
        int i21 = i20 + a10;
        int i22 = i21 + a10;
        System.arraycopy(c12957gArr, i18, c12957gArr, i21, a10);
        this.f84830b.v(c12957gArr, i21, i16);
        System.arraycopy(c12957gArr, i17, c12957gArr, i22, a10);
        this.f84830b.t(c12957gArr, i22, c12957gArr, i19, i16);
        this.f84830b.v(c12957gArr, i17, i16);
        this.f84830b.k(c12957gArr, i17, c12957gArr, i21, i16);
        System.arraycopy(c12957gArr, i18, c12957gArr, i21, a10);
        this.f84830b.t(c12957gArr, i18, c12957gArr, i20, i16);
        this.f84830b.k(c12957gArr, i18, c12957gArr, i22, i16);
        this.f84830b.v(c12957gArr, i19, i16);
        System.arraycopy(c12957gArr, i20, c12957gArr, i22, a10);
        this.f84830b.v(c12957gArr, i22, i16);
        this.f84830b.k(c12957gArr, i19, c12957gArr, i22, i16);
        int i23 = i22 + a10;
        int i24 = 0;
        while (i24 < a10) {
            c12957gArr[i22 + i24] = this.f84829a.l(sArr2[i15 + i24]);
            i24++;
            i23 = i23;
        }
        int i25 = i23;
        this.f84830b.a(c12957gArr, i22, i16);
        C12957g c12957g = this.f84829a.f84756b;
        System.arraycopy(c12957gArr, i22, c12957gArr, i25, a10);
        this.f84830b.s(c12957gArr, i25, c12957gArr, i21, i16);
        this.f84830b.u(c12957gArr, i25, this.f84829a.k(c12957g), i16);
        this.f84830b.s(c12957gArr, i22, c12957gArr, i20, i16);
        this.f84830b.u(c12957gArr, i22, c12957g, i16);
        int i26 = a10 * 2;
        System.arraycopy(c12957gArr, i22, c12957gArr, i20, i26);
        j(xVar, wVar, c12957gArr, i20, c12957gArr, i21, c12957gArr, i17, c12957gArr, i18, c12957gArr, i19, i16, i16, c12957gArr, i22);
        System.arraycopy(c12957gArr, i20, c12957gArr, i21, i26);
        r(c12957gArr, i18, bArr, i11, i16);
        r(c12957gArr, i17, bArr2, i12, i16);
        r(c12957gArr, i20, bArr3, i13, i16);
        r(c12957gArr, i19, bArr4, i14, i16);
        this.f84830b.a(c12957gArr, i18, i16);
        this.f84830b.a(c12957gArr, i17, i16);
        this.f84830b.a(c12957gArr, i20, i16);
        this.f84830b.a(c12957gArr, i19, i16);
        this.f84830b.w(c12957gArr, i18, i16);
        this.f84830b.w(c12957gArr, i20, i16);
        int i27 = i25 + a10;
        System.arraycopy(c12957gArr, i21, c12957gArr, i25, a10);
        System.arraycopy(c12957gArr, i22, c12957gArr, i27, a10);
        this.f84830b.s(c12957gArr, i25, c12957gArr, i17, i16);
        this.f84830b.s(c12957gArr, i27, c12957gArr, i19, i16);
        this.f84830b.k(c12957gArr, i25, c12957gArr, i27, i16);
        System.arraycopy(c12957gArr, i21, c12957gArr, i27, a10);
        this.f84830b.s(c12957gArr, i27, c12957gArr, i18, i16);
        System.arraycopy(c12957gArr, i25, c12957gArr, i21, a10);
        this.f84830b.s(c12957gArr, i22, c12957gArr, i20, i16);
        this.f84830b.k(c12957gArr, i22, c12957gArr, i27, i16);
        this.f84830b.h(c12957gArr, i21, i16);
        this.f84830b.h(c12957gArr, i22, i16);
        short[] sArr3 = new short[a10];
        int i28 = 0;
        int i29 = 0;
        for (int i30 = 0; i30 < a10; i30++) {
            int m10 = (sArr2[i15 + i30] & 65535) - ((int) this.f84829a.m(c12957gArr[i21 + i30]));
            i28 += m10 * m10;
            i29 |= i28;
            sArr3[i30] = (short) m10;
        }
        int i31 = (-(i29 >>> 31)) | i28;
        short[] sArr4 = new short[a10];
        for (int i32 = 0; i32 < a10; i32++) {
            sArr4[i32] = (short) (-this.f84829a.m(c12957gArr[i22 + i32]));
        }
        if (this.f84831c.d(i31, sArr4, 0, i16) == 0) {
            return 0;
        }
        System.arraycopy(sArr4, 0, sArr, i10, a10);
        return 1;
    }

    public int c(x xVar, w wVar, short[] sArr, int i10, C12957g[] c12957gArr, int i11, short[] sArr2, int i12, int i13, C12957g[] c12957gArr2, int i14) {
        int a10 = a(i13);
        int i15 = i14 + a10;
        int m10 = i11 + m(i13);
        int n10 = i11 + n(i13);
        int o10 = i11 + o(i13);
        int p10 = i11 + p(i13);
        int q10 = i11 + q(i13);
        for (int i16 = 0; i16 < a10; i16++) {
            c12957gArr2[i14 + i16] = this.f84829a.l(sArr2[i12 + i16]);
        }
        this.f84830b.a(c12957gArr2, i14, i13);
        C12957g c12957g = this.f84829a.f84756b;
        System.arraycopy(c12957gArr2, i14, c12957gArr2, i15, a10);
        this.f84830b.s(c12957gArr2, i15, c12957gArr, n10, i13);
        this.f84830b.u(c12957gArr2, i15, this.f84829a.k(c12957g), i13);
        this.f84830b.s(c12957gArr2, i14, c12957gArr, p10, i13);
        this.f84830b.u(c12957gArr2, i14, c12957g, i13);
        int i17 = i15 + a10;
        int i18 = i17 + a10;
        i(xVar, wVar, c12957gArr2, i17, c12957gArr2, i18, c12957gArr, q10, c12957gArr2, i14, c12957gArr2, i15, i13, c12957gArr2, i18 + a10);
        System.arraycopy(c12957gArr2, i17, c12957gArr2, i14, a10);
        System.arraycopy(c12957gArr2, i18, c12957gArr2, i15, a10);
        this.f84830b.s(c12957gArr2, i17, c12957gArr, m10, i13);
        this.f84830b.s(c12957gArr2, i18, c12957gArr, o10, i13);
        this.f84830b.k(c12957gArr2, i17, c12957gArr2, i18, i13);
        System.arraycopy(c12957gArr2, i14, c12957gArr2, i18, a10);
        this.f84830b.s(c12957gArr2, i18, c12957gArr, n10, i13);
        System.arraycopy(c12957gArr2, i17, c12957gArr2, i14, a10);
        this.f84830b.s(c12957gArr2, i15, c12957gArr, p10, i13);
        this.f84830b.k(c12957gArr2, i15, c12957gArr2, i18, i13);
        this.f84830b.h(c12957gArr2, i14, i13);
        this.f84830b.h(c12957gArr2, i15, i13);
        short[] sArr3 = new short[a10];
        int i19 = 0;
        int i20 = 0;
        for (int i21 = 0; i21 < a10; i21++) {
            int m11 = (sArr2[i12 + i21] & 65535) - ((int) this.f84829a.m(c12957gArr2[i14 + i21]));
            i19 += m11 * m11;
            i20 |= i19;
            sArr3[i21] = (short) m11;
        }
        int i22 = (-(i20 >>> 31)) | i19;
        short[] sArr4 = new short[a10];
        for (int i23 = 0; i23 < a10; i23++) {
            sArr4[i23] = (short) (-this.f84829a.m(c12957gArr2[i15 + i23]));
        }
        if (this.f84831c.d(i22, sArr4, 0, i13) == 0) {
            return 0;
        }
        System.arraycopy(sArr4, 0, sArr, i10, a10);
        System.arraycopy(sArr3, 0, c12957gArr2, i14, a10);
        return 1;
    }

    public void d(C12957g[] c12957gArr, int i10, byte[] bArr, int i11, byte[] bArr2, int i12, byte[] bArr3, int i13, byte[] bArr4, int i14, int i15, C12957g[] c12957gArr2, int i16) {
        int a10 = a(i15);
        int m10 = i10 + m(i15);
        int n10 = i10 + n(i15);
        int o10 = i10 + o(i15);
        int p10 = i10 + p(i15);
        int q10 = i10 + q(i15);
        r(c12957gArr, n10, bArr, i11, i15);
        r(c12957gArr, m10, bArr2, i12, i15);
        r(c12957gArr, p10, bArr3, i13, i15);
        r(c12957gArr, o10, bArr4, i14, i15);
        this.f84830b.a(c12957gArr, n10, i15);
        this.f84830b.a(c12957gArr, m10, i15);
        this.f84830b.a(c12957gArr, p10, i15);
        this.f84830b.a(c12957gArr, o10, i15);
        this.f84830b.w(c12957gArr, n10, i15);
        this.f84830b.w(c12957gArr, p10, i15);
        int i17 = i16 + a10;
        int i18 = i17 + a10;
        int i19 = i18 + a10;
        System.arraycopy(c12957gArr, m10, c12957gArr2, i16, a10);
        this.f84830b.v(c12957gArr2, i16, i15);
        System.arraycopy(c12957gArr, n10, c12957gArr2, i19, a10);
        this.f84830b.v(c12957gArr2, i19, i15);
        this.f84830b.k(c12957gArr2, i16, c12957gArr2, i19, i15);
        System.arraycopy(c12957gArr, m10, c12957gArr2, i17, a10);
        this.f84830b.t(c12957gArr2, i17, c12957gArr, o10, i15);
        System.arraycopy(c12957gArr, n10, c12957gArr2, i19, a10);
        this.f84830b.t(c12957gArr2, i19, c12957gArr, p10, i15);
        this.f84830b.k(c12957gArr2, i17, c12957gArr2, i19, i15);
        System.arraycopy(c12957gArr, o10, c12957gArr2, i18, a10);
        this.f84830b.v(c12957gArr2, i18, i15);
        System.arraycopy(c12957gArr, p10, c12957gArr2, i19, a10);
        this.f84830b.v(c12957gArr2, i19, i15);
        this.f84830b.k(c12957gArr2, i18, c12957gArr2, i19, i15);
        f(c12957gArr, q10, c12957gArr2, i16, c12957gArr2, i17, c12957gArr2, i18, i15, c12957gArr2, i19);
        e(c12957gArr, q10, i15, i15);
    }

    public void e(C12957g[] c12957gArr, int i10, int i11, int i12) {
        int a10 = a(i12);
        if (a10 == 1) {
            C12952b c12952b = this.f84829a;
            c12957gArr[i10] = c12952b.j(c12952b.o(c12957gArr[i10]), this.f84829a.f84758d[i11]);
        } else {
            int i13 = i10 + a10;
            int i14 = i12 - 1;
            e(c12957gArr, i13, i11, i14);
            e(c12957gArr, i13 + h(i14), i11, i14);
        }
    }

    public void f(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, C12957g[] c12957gArr4, int i13, int i14, C12957g[] c12957gArr5, int i15) {
        int a10 = a(i14);
        if (a10 == 1) {
            c12957gArr[i10] = c12957gArr2[i11];
            return;
        }
        int i16 = a10 >> 1;
        int i17 = i15 + a10;
        int i18 = i15 + (a10 << 1);
        System.arraycopy(c12957gArr2, i11, c12957gArr5, i15, a10);
        this.f84830b.j(c12957gArr5, i17, c12957gArr, i10, c12957gArr2, i11, c12957gArr3, i12, c12957gArr4, i13, i14);
        this.f84830b.x(c12957gArr5, i18, c12957gArr5, i18 + i16, c12957gArr5, i15, i14);
        int i19 = i15 + i16;
        this.f84830b.x(c12957gArr5, i15, c12957gArr5, i19, c12957gArr5, i17, i14);
        System.arraycopy(c12957gArr5, i18, c12957gArr5, i17, a10);
        int i20 = i10 + a10;
        int i21 = i14 - 1;
        g(c12957gArr, i20, c12957gArr5, i17, c12957gArr5, i17 + i16, i21, c12957gArr5, i18);
        g(c12957gArr, i20 + h(i21), c12957gArr5, i15, c12957gArr5, i19, i21, c12957gArr5, i18);
    }

    public void g(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, int i13, C12957g[] c12957gArr4, int i14) {
        int a10 = a(i13);
        if (a10 == 1) {
            c12957gArr[i10] = c12957gArr2[i11];
            return;
        }
        int i15 = a10 >> 1;
        this.f84830b.j(c12957gArr4, i14, c12957gArr, i10, c12957gArr2, i11, c12957gArr3, i12, c12957gArr2, i11, i13);
        int i16 = i12 + i15;
        this.f84830b.x(c12957gArr3, i12, c12957gArr3, i16, c12957gArr2, i11, i13);
        int i17 = i11 + i15;
        this.f84830b.x(c12957gArr2, i11, c12957gArr2, i17, c12957gArr4, i14, i13);
        int i18 = i10 + a10;
        int i19 = i13 - 1;
        g(c12957gArr, i18, c12957gArr3, i12, c12957gArr3, i16, i19, c12957gArr4, i14);
        g(c12957gArr, i18 + h(i19), c12957gArr2, i11, c12957gArr2, i17, i19, c12957gArr4, i14);
    }

    public int h(int i10) {
        return (i10 + 1) << i10;
    }

    public void i(x xVar, w wVar, C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, C12957g[] c12957gArr4, int i13, C12957g[] c12957gArr5, int i14, int i15, C12957g[] c12957gArr6, int i16) {
        if (i15 != 2) {
            if (i15 != 1) {
                int i17 = 1 << i15;
                int i18 = i17 >> 1;
                int i19 = i12 + i17;
                int i20 = i15 - 1;
                int h10 = i19 + h(i20);
                int i21 = i11 + i18;
                this.f84830b.x(c12957gArr2, i11, c12957gArr2, i21, c12957gArr5, i14, i15);
                int i22 = i16 + i18;
                int i23 = i16 + i17;
                i(xVar, wVar, c12957gArr6, i16, c12957gArr6, i22, c12957gArr3, h10, c12957gArr2, i11, c12957gArr2, i21, i20, c12957gArr6, i23);
                this.f84830b.q(c12957gArr2, i11, c12957gArr6, i16, c12957gArr6, i22, i15);
                System.arraycopy(c12957gArr5, i14, c12957gArr6, i16, i17);
                this.f84830b.y(c12957gArr6, i16, c12957gArr2, i11, i15);
                this.f84830b.s(c12957gArr6, i16, c12957gArr3, i12, i15);
                this.f84830b.k(c12957gArr6, i16, c12957gArr4, i13, i15);
                int i24 = i10 + i18;
                this.f84830b.x(c12957gArr, i10, c12957gArr, i24, c12957gArr6, i16, i15);
                i(xVar, wVar, c12957gArr6, i16, c12957gArr6, i22, c12957gArr3, i19, c12957gArr, i10, c12957gArr, i24, i20, c12957gArr6, i23);
                this.f84830b.q(c12957gArr, i10, c12957gArr6, i16, c12957gArr6, i22, i15);
                return;
            }
            C12957g c12957g = c12957gArr5[i14];
            C12957g c12957g2 = c12957gArr5[i14 + 1];
            C12957g c12957g3 = c12957gArr3[i12 + 3];
            C12957g l10 = this.f84829a.l(xVar.c(wVar, c12957g, c12957g3));
            c12957gArr2[i11] = l10;
            C12957g l11 = this.f84829a.l(xVar.c(wVar, c12957g2, c12957g3));
            c12957gArr2[i11 + 1] = l11;
            C12957g p10 = this.f84829a.p(c12957g, l10);
            C12957g p11 = this.f84829a.p(c12957g2, l11);
            C12957g c12957g4 = c12957gArr3[i12];
            C12957g c12957g5 = c12957gArr3[i12 + 1];
            C12952b c12952b = this.f84829a;
            C12957g p12 = c12952b.p(c12952b.j(p10, c12957g4), this.f84829a.j(p11, c12957g5));
            C12952b c12952b2 = this.f84829a;
            C12957g b10 = c12952b2.b(c12952b2.j(p10, c12957g5), this.f84829a.j(p11, c12957g4));
            C12957g b11 = this.f84829a.b(p12, c12957gArr4[i13]);
            C12957g b12 = this.f84829a.b(b10, c12957gArr4[i13 + 1]);
            C12957g c12957g6 = c12957gArr3[i12 + 2];
            c12957gArr[i10] = this.f84829a.l(xVar.c(wVar, b11, c12957g6));
            c12957gArr[i10 + 1] = this.f84829a.l(xVar.c(wVar, b12, c12957g6));
            return;
        }
        C12957g c12957g7 = c12957gArr5[i14];
        int i25 = i14 + 2;
        C12957g c12957g8 = c12957gArr5[i25];
        int i26 = i14 + 1;
        C12957g c12957g9 = c12957gArr5[i26];
        int i27 = i14 + 3;
        C12957g c12957g10 = c12957gArr5[i27];
        C12957g b13 = this.f84829a.b(c12957g7, c12957g9);
        C12957g b14 = this.f84829a.b(c12957g8, c12957g10);
        C12957g g10 = this.f84829a.g(b13);
        C12957g g11 = this.f84829a.g(b14);
        C12957g p13 = this.f84829a.p(c12957g7, c12957g9);
        C12957g p14 = this.f84829a.p(c12957g8, c12957g10);
        C12952b c12952b3 = this.f84829a;
        C12957g j10 = c12952b3.j(c12952b3.b(p13, p14), this.f84829a.f84768n);
        C12952b c12952b4 = this.f84829a;
        C12957g j11 = c12952b4.j(c12952b4.p(p14, p13), this.f84829a.f84768n);
        C12957g c12957g11 = c12957gArr3[i12 + 11];
        C12957g l12 = this.f84829a.l(xVar.c(wVar, j10, c12957g11));
        C12957g l13 = this.f84829a.l(xVar.c(wVar, j11, c12957g11));
        C12957g p15 = this.f84829a.p(j10, l12);
        C12957g p16 = this.f84829a.p(j11, l13);
        C12957g c12957g12 = c12957gArr3[i12 + 8];
        C12957g c12957g13 = c12957gArr3[i12 + 9];
        C12952b c12952b5 = this.f84829a;
        C12957g p17 = c12952b5.p(c12952b5.j(p15, c12957g12), this.f84829a.j(p16, c12957g13));
        C12952b c12952b6 = this.f84829a;
        C12957g b15 = c12952b6.b(c12952b6.j(p15, c12957g13), this.f84829a.j(p16, c12957g12));
        C12957g b16 = this.f84829a.b(p17, g10);
        C12957g b17 = this.f84829a.b(b15, g11);
        C12957g c12957g14 = c12957gArr3[i12 + 10];
        C12957g l14 = this.f84829a.l(xVar.c(wVar, b16, c12957g14));
        C12957g l15 = this.f84829a.l(xVar.c(wVar, b17, c12957g14));
        C12952b c12952b7 = this.f84829a;
        C12957g j12 = c12952b7.j(c12952b7.p(l12, l13), this.f84829a.f84767m);
        C12952b c12952b8 = this.f84829a;
        C12957g j13 = c12952b8.j(c12952b8.b(l12, l13), this.f84829a.f84767m);
        C12957g b18 = this.f84829a.b(l14, j12);
        c12957gArr2[i11] = b18;
        C12957g b19 = this.f84829a.b(l15, j13);
        c12957gArr2[i11 + 2] = b19;
        C12957g p18 = this.f84829a.p(l14, j12);
        c12957gArr2[i11 + 1] = p18;
        C12957g p19 = this.f84829a.p(l15, j13);
        c12957gArr2[i11 + 3] = p19;
        C12957g p20 = this.f84829a.p(c12957gArr5[i14], b18);
        C12957g p21 = this.f84829a.p(c12957gArr5[i26], p18);
        C12957g p22 = this.f84829a.p(c12957gArr5[i25], b19);
        C12957g p23 = this.f84829a.p(c12957gArr5[i27], p19);
        C12957g c12957g15 = c12957gArr3[i12];
        C12957g c12957g16 = c12957gArr3[i12 + 2];
        C12952b c12952b9 = this.f84829a;
        C12957g p24 = c12952b9.p(c12952b9.j(p20, c12957g15), this.f84829a.j(p22, c12957g16));
        C12952b c12952b10 = this.f84829a;
        C12957g b20 = c12952b10.b(c12952b10.j(p20, c12957g16), this.f84829a.j(p22, c12957g15));
        C12957g c12957g17 = c12957gArr3[i12 + 1];
        C12957g c12957g18 = c12957gArr3[i12 + 3];
        C12952b c12952b11 = this.f84829a;
        C12957g p25 = c12952b11.p(c12952b11.j(p21, c12957g17), this.f84829a.j(p23, c12957g18));
        C12952b c12952b12 = this.f84829a;
        C12957g b21 = c12952b12.b(c12952b12.j(p21, c12957g18), this.f84829a.j(p23, c12957g17));
        C12957g b22 = this.f84829a.b(p24, c12957gArr4[i13]);
        C12957g b23 = this.f84829a.b(p25, c12957gArr4[i13 + 1]);
        C12957g b24 = this.f84829a.b(b20, c12957gArr4[i13 + 2]);
        C12957g b25 = this.f84829a.b(b21, c12957gArr4[i13 + 3]);
        C12957g b26 = this.f84829a.b(b22, b23);
        C12957g b27 = this.f84829a.b(b24, b25);
        C12957g g12 = this.f84829a.g(b26);
        C12957g g13 = this.f84829a.g(b27);
        C12957g p26 = this.f84829a.p(b22, b23);
        C12957g p27 = this.f84829a.p(b24, b25);
        C12952b c12952b13 = this.f84829a;
        C12957g j14 = c12952b13.j(c12952b13.b(p26, p27), this.f84829a.f84768n);
        C12952b c12952b14 = this.f84829a;
        C12957g j15 = c12952b14.j(c12952b14.p(p27, p26), this.f84829a.f84768n);
        C12957g c12957g19 = c12957gArr3[i12 + 7];
        C12957g l16 = this.f84829a.l(xVar.c(wVar, j14, c12957g19));
        C12957g l17 = this.f84829a.l(xVar.c(wVar, j15, c12957g19));
        C12957g p28 = this.f84829a.p(j14, l16);
        C12957g p29 = this.f84829a.p(j15, l17);
        C12957g c12957g20 = c12957gArr3[i12 + 4];
        C12957g c12957g21 = c12957gArr3[i12 + 5];
        C12952b c12952b15 = this.f84829a;
        C12957g p30 = c12952b15.p(c12952b15.j(p28, c12957g20), this.f84829a.j(p29, c12957g21));
        C12952b c12952b16 = this.f84829a;
        C12957g b28 = c12952b16.b(c12952b16.j(p28, c12957g21), this.f84829a.j(p29, c12957g20));
        C12957g b29 = this.f84829a.b(p30, g12);
        C12957g b30 = this.f84829a.b(b28, g13);
        C12957g c12957g22 = c12957gArr3[i12 + 6];
        C12957g l18 = this.f84829a.l(xVar.c(wVar, b29, c12957g22));
        C12957g l19 = this.f84829a.l(xVar.c(wVar, b30, c12957g22));
        C12952b c12952b17 = this.f84829a;
        C12957g j16 = c12952b17.j(c12952b17.p(l16, l17), this.f84829a.f84767m);
        C12952b c12952b18 = this.f84829a;
        C12957g j17 = c12952b18.j(c12952b18.b(l16, l17), this.f84829a.f84767m);
        c12957gArr[i10] = this.f84829a.b(l18, j16);
        c12957gArr[i10 + 2] = this.f84829a.b(l19, j17);
        c12957gArr[i10 + 1] = this.f84829a.p(l18, j16);
        c12957gArr[i10 + 3] = this.f84829a.p(l19, j17);
    }

    public void j(x xVar, w wVar, C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, C12957g[] c12957gArr4, int i13, C12957g[] c12957gArr5, int i14, int i15, int i16, C12957g[] c12957gArr6, int i17) {
        if (i16 == 0) {
            C12957g c12957g = c12957gArr3[i12];
            C12952b c12952b = this.f84829a;
            C12957g j10 = c12952b.j(c12952b.o(c12957g), this.f84829a.f84758d[i15]);
            c12957gArr[i10] = this.f84829a.l(xVar.c(wVar, c12957gArr[i10], j10));
            c12957gArr2[i11] = this.f84829a.l(xVar.c(wVar, c12957gArr2[i11], j10));
            return;
        }
        int i18 = 1 << i16;
        int i19 = i18 >> 1;
        this.f84830b.i(c12957gArr3, i12, c12957gArr4, i13, c12957gArr5, i14, i16);
        int i20 = i17 + i19;
        this.f84830b.x(c12957gArr6, i17, c12957gArr6, i20, c12957gArr3, i12, i16);
        System.arraycopy(c12957gArr6, i17, c12957gArr3, i12, i18);
        this.f84830b.x(c12957gArr6, i17, c12957gArr6, i20, c12957gArr5, i14, i16);
        System.arraycopy(c12957gArr6, i17, c12957gArr5, i14, i18);
        System.arraycopy(c12957gArr4, i13, c12957gArr6, i17, i18);
        System.arraycopy(c12957gArr3, i12, c12957gArr4, i13, i19);
        int i21 = i13 + i19;
        System.arraycopy(c12957gArr5, i14, c12957gArr4, i21, i19);
        int i22 = i17 + i18;
        int i23 = i22 + i19;
        this.f84830b.x(c12957gArr6, i22, c12957gArr6, i23, c12957gArr2, i11, i16);
        int i24 = i16 - 1;
        j(xVar, wVar, c12957gArr6, i22, c12957gArr6, i23, c12957gArr5, i14, c12957gArr5, i14 + i19, c12957gArr4, i21, i15, i24, c12957gArr6, i22 + i18);
        int i25 = i17 + (i18 << 1);
        this.f84830b.q(c12957gArr6, i25, c12957gArr6, i22, c12957gArr6, i23, i16);
        System.arraycopy(c12957gArr2, i11, c12957gArr6, i22, i18);
        this.f84830b.y(c12957gArr6, i22, c12957gArr6, i25, i16);
        System.arraycopy(c12957gArr6, i25, c12957gArr2, i11, i18);
        this.f84830b.s(c12957gArr6, i17, c12957gArr6, i22, i16);
        this.f84830b.k(c12957gArr, i10, c12957gArr6, i17, i16);
        this.f84830b.x(c12957gArr6, i17, c12957gArr6, i20, c12957gArr, i10, i16);
        j(xVar, wVar, c12957gArr6, i17, c12957gArr6, i20, c12957gArr3, i12, c12957gArr3, i12 + i19, c12957gArr4, i13, i15, i24, c12957gArr6, i22);
        this.f84830b.q(c12957gArr, i10, c12957gArr6, i17, c12957gArr6, i20, i16);
    }

    public void k(short[] sArr, int i10, v vVar, byte[] bArr, int i11, byte[] bArr2, int i12, byte[] bArr3, int i13, byte[] bArr4, int i14, short[] sArr2, int i15, int i16, C12957g[] c12957gArr, int i17) {
        w wVar;
        x xVar;
        do {
            wVar = new w();
            xVar = new x();
            wVar.f84849a = this.f84829a.f84759e[i16];
            wVar.f84850b.e(vVar);
        } while (b(xVar, wVar, sArr, i10, bArr, i11, bArr2, i12, bArr3, i13, bArr4, i14, sArr2, i15, i16, c12957gArr, i17) == 0);
    }

    public void l(short[] sArr, int i10, v vVar, C12957g[] c12957gArr, int i11, short[] sArr2, int i12, int i13, C12957g[] c12957gArr2, int i14) {
        w wVar;
        x xVar;
        do {
            wVar = new w();
            xVar = new x();
            wVar.f84849a = this.f84829a.f84759e[i13];
            wVar.f84850b.e(vVar);
        } while (c(xVar, wVar, sArr, i10, c12957gArr, i11, sArr2, i12, i13, c12957gArr2, i14) == 0);
    }

    public int m(int i10) {
        return 0;
    }

    public int n(int i10) {
        return a(i10);
    }

    public int o(int i10) {
        return a(i10) * 2;
    }

    public int p(int i10) {
        return a(i10) * 3;
    }

    public int q(int i10) {
        return a(i10) * 4;
    }

    public void r(C12957g[] c12957gArr, int i10, byte[] bArr, int i11, int i12) {
        int a10 = a(i12);
        for (int i13 = 0; i13 < a10; i13++) {
            c12957gArr[i10 + i13] = this.f84829a.l(bArr[i11 + i13]);
        }
    }
}
