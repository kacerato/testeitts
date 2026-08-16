package am;

import bm.i;

public abstract class AbstractC3681e {

    public short[] f32393a;

    public i f32394b;

    public AbstractC3681e(i iVar) {
        this.f32393a = new short[iVar.c()];
        this.f32394b = iVar;
    }

    public static short a(short s10, short s11) {
        return (short) ((s10 & s11) >>> 15);
    }

    public static byte c(byte b10) {
        return (byte) ((b10 & 255) % 3);
    }

    public static short d(short s10) {
        return (short) ((s10 & 65535) % 3);
    }

    public static int f(int i10, int i11) {
        return i10 % i11;
    }

    public abstract void b(AbstractC3681e abstractC3681e);

    public void e() {
        int c10 = this.f32394b.c();
        for (int i10 = 0; i10 < c10; i10++) {
            short[] sArr = this.f32393a;
            sArr[i10] = d((short) (sArr[i10] + (sArr[c10 - 1] * 2)));
        }
    }

    public void g() {
        int c10 = this.f32394b.c();
        for (int i10 = 0; i10 < c10; i10++) {
            short[] sArr = this.f32393a;
            sArr[i10] = (short) (sArr[i10] - sArr[c10 - 1]);
        }
    }

    public void h(AbstractC3681e abstractC3681e) {
        i(abstractC3681e, this.f32394b.a(), this.f32394b.a(), this.f32394b.a(), this.f32394b.a());
    }

    public void i(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2, AbstractC3681e abstractC3681e3, AbstractC3681e abstractC3681e4, AbstractC3681e abstractC3681e5) {
        int i10;
        int length = this.f32393a.length;
        short s10 = 0;
        abstractC3681e5.f32393a[0] = 1;
        for (int i11 = 0; i11 < length; i11++) {
            abstractC3681e2.f32393a[i11] = 1;
        }
        int i12 = 0;
        while (true) {
            i10 = length - 1;
            if (i12 >= i10) {
                break;
            }
            short[] sArr = abstractC3681e.f32393a;
            abstractC3681e3.f32393a[(length - 2) - i12] = (short) ((sArr[i10] ^ sArr[i12]) & 1);
            i12++;
        }
        abstractC3681e3.f32393a[i10] = 0;
        int i13 = 0;
        short s11 = 1;
        for (short s12 = 1; i13 < (i10 * 2) - s12; s12 = 1) {
            for (int i14 = i10; i14 > 0; i14--) {
                short[] sArr2 = abstractC3681e4.f32393a;
                sArr2[i14] = sArr2[i14 - 1];
            }
            abstractC3681e4.f32393a[s10] = s10;
            short s13 = abstractC3681e3.f32393a[s10];
            short s14 = (short) (abstractC3681e2.f32393a[s10] & s13);
            int i15 = -s11;
            short a10 = a((short) i15, (short) (-s13));
            s11 = (short) (((short) (s11 ^ ((i15 ^ s11) & a10))) + s12);
            for (int i16 = s10; i16 < length; i16++) {
                short[] sArr3 = abstractC3681e2.f32393a;
                short s15 = sArr3[i16];
                short[] sArr4 = abstractC3681e3.f32393a;
                short s16 = (short) (a10 & (s15 ^ sArr4[i16]));
                sArr3[i16] = (short) (s15 ^ s16);
                sArr4[i16] = (short) (s16 ^ sArr4[i16]);
                short[] sArr5 = abstractC3681e4.f32393a;
                short s17 = sArr5[i16];
                short[] sArr6 = abstractC3681e5.f32393a;
                short s18 = (short) ((sArr6[i16] ^ s17) & a10);
                sArr5[i16] = (short) (s17 ^ s18);
                sArr6[i16] = (short) (sArr6[i16] ^ s18);
            }
            for (int i17 = 0; i17 < length; i17++) {
                short[] sArr7 = abstractC3681e3.f32393a;
                sArr7[i17] = (short) (sArr7[i17] ^ (abstractC3681e2.f32393a[i17] & s14));
            }
            for (int i18 = 0; i18 < length; i18++) {
                short[] sArr8 = abstractC3681e5.f32393a;
                sArr8[i18] = (short) (sArr8[i18] ^ (abstractC3681e4.f32393a[i18] & s14));
            }
            int i19 = 0;
            while (i19 < i10) {
                short[] sArr9 = abstractC3681e3.f32393a;
                int i20 = i19 + 1;
                sArr9[i19] = sArr9[i20];
                i19 = i20;
            }
            abstractC3681e3.f32393a[i10] = 0;
            i13++;
            s10 = 0;
        }
        int i21 = 0;
        while (true) {
            short[] sArr10 = this.f32393a;
            if (i21 >= i10) {
                sArr10[i10] = 0;
                return;
            } else {
                sArr10[i21] = abstractC3681e4.f32393a[(length - 2) - i21];
                i21++;
            }
        }
    }

    public final void j(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2, AbstractC3681e abstractC3681e3, AbstractC3681e abstractC3681e4, AbstractC3681e abstractC3681e5) {
        int length = this.f32393a.length;
        for (int i10 = 0; i10 < length; i10++) {
            abstractC3681e3.f32393a[i10] = (short) (-abstractC3681e2.f32393a[i10]);
        }
        for (int i11 = 0; i11 < length; i11++) {
            this.f32393a[i11] = abstractC3681e.f32393a[i11];
        }
        abstractC3681e4.m(this, abstractC3681e3);
        short[] sArr = abstractC3681e4.f32393a;
        sArr[0] = (short) (sArr[0] + 2);
        abstractC3681e5.m(abstractC3681e4, this);
        abstractC3681e4.m(abstractC3681e5, abstractC3681e3);
        short[] sArr2 = abstractC3681e4.f32393a;
        sArr2[0] = (short) (sArr2[0] + 2);
        m(abstractC3681e4, abstractC3681e5);
        abstractC3681e4.m(this, abstractC3681e3);
        short[] sArr3 = abstractC3681e4.f32393a;
        sArr3[0] = (short) (sArr3[0] + 2);
        abstractC3681e5.m(abstractC3681e4, this);
        abstractC3681e4.m(abstractC3681e5, abstractC3681e3);
        short[] sArr4 = abstractC3681e4.f32393a;
        sArr4[0] = (short) (sArr4[0] + 2);
        m(abstractC3681e4, abstractC3681e5);
    }

    public void k(AbstractC3681e abstractC3681e) {
        l(abstractC3681e, this.f32394b.a(), this.f32394b.a(), this.f32394b.a(), this.f32394b.a());
    }

    public void l(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2, AbstractC3681e abstractC3681e3, AbstractC3681e abstractC3681e4, AbstractC3681e abstractC3681e5) {
        abstractC3681e2.h(abstractC3681e);
        j(abstractC3681e2, abstractC3681e, abstractC3681e3, abstractC3681e4, abstractC3681e5);
    }

    public void m(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2) {
        int i10;
        int length = this.f32393a.length;
        int i11 = 0;
        while (i11 < length) {
            this.f32393a[i11] = 0;
            for (int i12 = 1; i12 < length - i11; i12++) {
                short[] sArr = this.f32393a;
                sArr[i11] = (short) (sArr[i11] + (abstractC3681e.f32393a[i11 + i12] * abstractC3681e2.f32393a[length - i12]));
            }
            int i13 = 0;
            while (true) {
                i10 = i11 + 1;
                if (i13 < i10) {
                    short[] sArr2 = this.f32393a;
                    sArr2[i11] = (short) (sArr2[i11] + (abstractC3681e.f32393a[i11 - i13] * abstractC3681e2.f32393a[i13]));
                    i13++;
                }
            }
            i11 = i10;
        }
    }

    public void n(byte[] bArr) {
        int length = this.f32393a.length;
        v(bArr);
        int i10 = length - 1;
        this.f32393a[i10] = 0;
        for (int i11 = 0; i11 < this.f32394b.k(); i11++) {
            short[] sArr = this.f32393a;
            sArr[i10] = (short) (sArr[i10] - sArr[i11]);
        }
    }

    public byte[] o(int i10) {
        return x(i10);
    }

    public void p(AbstractC3681e abstractC3681e) {
        int length = this.f32393a.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f32393a[i10] = (short) f(abstractC3681e.f32393a[i10] & 65535, this.f32394b.n());
            short b10 = (short) (this.f32393a[i10] >>> (this.f32394b.b() - 1));
            short[] sArr = this.f32393a;
            sArr[i10] = (short) (sArr[i10] + (b10 << (1 - (this.f32394b.b() & 1))));
        }
        e();
    }

    public void q(byte[] bArr) {
        int length = this.f32393a.length;
        for (int i10 = 0; i10 < this.f32394b.k() / 5; i10++) {
            byte b10 = bArr[i10];
            short[] sArr = this.f32393a;
            int i11 = i10 * 5;
            sArr[i11] = b10;
            int i12 = b10 & 255;
            sArr[i11 + 1] = (short) ((i12 * 171) >>> 9);
            sArr[i11 + 2] = (short) ((i12 * 57) >>> 9);
            sArr[i11 + 3] = (short) ((i12 * 19) >>> 9);
            sArr[i11 + 4] = (short) ((i12 * 203) >>> 14);
        }
        if (this.f32394b.k() > (this.f32394b.k() / 5) * 5) {
            int k10 = this.f32394b.k() / 5;
            byte b11 = bArr[k10];
            int i13 = 0;
            while (true) {
                int i14 = (k10 * 5) + i13;
                if (i14 >= this.f32394b.k()) {
                    break;
                }
                this.f32393a[i14] = b11;
                b11 = (byte) (((b11 & 255) * 171) >> 9);
                i13++;
            }
        }
        this.f32393a[length - 1] = 0;
        e();
    }

    public void r(AbstractC3681e abstractC3681e) {
        s(abstractC3681e, this.f32394b.a(), this.f32394b.a(), this.f32394b.a(), this.f32394b.a());
    }

    public void s(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2, AbstractC3681e abstractC3681e3, AbstractC3681e abstractC3681e4, AbstractC3681e abstractC3681e5) {
        int i10;
        int length = this.f32393a.length;
        short s10 = 0;
        abstractC3681e5.f32393a[0] = 1;
        for (int i11 = 0; i11 < length; i11++) {
            abstractC3681e2.f32393a[i11] = 1;
        }
        int i12 = 0;
        while (true) {
            i10 = length - 1;
            if (i12 >= i10) {
                break;
            }
            short[] sArr = abstractC3681e.f32393a;
            abstractC3681e3.f32393a[(length - 2) - i12] = d((short) ((sArr[i12] & 3) + ((sArr[i10] & 3) * 2)));
            i12++;
        }
        abstractC3681e3.f32393a[i10] = 0;
        int i13 = 0;
        short s11 = 1;
        for (short s12 = 1; i13 < (i10 * 2) - s12; s12 = 1) {
            for (int i14 = i10; i14 > 0; i14--) {
                short[] sArr2 = abstractC3681e4.f32393a;
                sArr2[i14] = sArr2[i14 - 1];
            }
            abstractC3681e4.f32393a[s10] = s10;
            short c10 = c((byte) (abstractC3681e3.f32393a[s10] * 2 * abstractC3681e2.f32393a[s10]));
            int i15 = -s11;
            short a10 = a((short) i15, (short) (-abstractC3681e3.f32393a[s10]));
            s11 = (short) (((short) (s11 ^ ((i15 ^ s11) & a10))) + s12);
            for (int i16 = s10; i16 < length; i16++) {
                short[] sArr3 = abstractC3681e2.f32393a;
                short s13 = sArr3[i16];
                short[] sArr4 = abstractC3681e3.f32393a;
                short s14 = (short) (a10 & (s13 ^ sArr4[i16]));
                sArr3[i16] = (short) (s13 ^ s14);
                sArr4[i16] = (short) (s14 ^ sArr4[i16]);
                short[] sArr5 = abstractC3681e4.f32393a;
                short s15 = sArr5[i16];
                short[] sArr6 = abstractC3681e5.f32393a;
                short s16 = (short) ((sArr6[i16] ^ s15) & a10);
                sArr5[i16] = (short) (s15 ^ s16);
                sArr6[i16] = (short) (sArr6[i16] ^ s16);
            }
            for (int i17 = 0; i17 < length; i17++) {
                abstractC3681e3.f32393a[i17] = c((byte) (r8[i17] + (abstractC3681e2.f32393a[i17] * c10)));
            }
            for (int i18 = 0; i18 < length; i18++) {
                abstractC3681e5.f32393a[i18] = c((byte) (r8[i18] + (abstractC3681e4.f32393a[i18] * c10)));
            }
            int i19 = 0;
            while (i19 < i10) {
                short[] sArr7 = abstractC3681e3.f32393a;
                int i20 = i19 + 1;
                sArr7[i19] = sArr7[i20];
                i19 = i20;
            }
            abstractC3681e3.f32393a[i10] = 0;
            i13++;
            s10 = 0;
        }
        short s17 = abstractC3681e2.f32393a[s10];
        for (int i21 = 0; i21 < i10; i21++) {
            this.f32393a[i21] = c((byte) (abstractC3681e4.f32393a[(length - 2) - i21] * s17));
        }
        this.f32393a[i10] = 0;
    }

    public void t(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2) {
        m(abstractC3681e, abstractC3681e2);
        e();
    }

    public byte[] u(int i10) {
        byte[] bArr = new byte[i10];
        byte b10 = 0;
        for (int i11 = 0; i11 < this.f32394b.k() / 5; i11++) {
            short[] sArr = this.f32393a;
            int i12 = i11 * 5;
            bArr[i11] = (byte) (((((byte) (((((byte) (((((byte) (((((byte) (sArr[i12 + 4] & 255)) * 3) + sArr[i12 + 3]) & 255)) * 3) + sArr[i12 + 2]) & 255)) * 3) + sArr[i12 + 1]) & 255)) * 3) + sArr[i12]) & 255);
        }
        if (this.f32394b.k() > (this.f32394b.k() / 5) * 5) {
            int k10 = this.f32394b.k() / 5;
            int i13 = k10 * 5;
            for (int k11 = (this.f32394b.k() - i13) - 1; k11 >= 0; k11--) {
                b10 = (byte) (((b10 * 3) + this.f32393a[i13 + k11]) & 255);
            }
            bArr[k10] = b10;
        }
        return bArr;
    }

    public abstract void v(byte[] bArr);

    public void w(AbstractC3681e abstractC3681e, AbstractC3681e abstractC3681e2) {
        m(abstractC3681e, abstractC3681e2);
        g();
    }

    public abstract byte[] x(int i10);

    public void y() {
        int length = this.f32393a.length;
        for (int i10 = 0; i10 < length; i10++) {
            short[] sArr = this.f32393a;
            sArr[i10] = (short) f(sArr[i10] & 65535, this.f32394b.n());
            short[] sArr2 = this.f32393a;
            short s10 = sArr2[i10];
            sArr2[i10] = (short) ((s10 ^ (s10 >>> (this.f32394b.b() - 1))) & 3);
        }
    }

    public void z() {
        int length = this.f32393a.length;
        for (int i10 = 0; i10 < length; i10++) {
            short[] sArr = this.f32393a;
            short s10 = sArr[i10];
            sArr[i10] = (short) (s10 | ((-(s10 >>> 1)) & (this.f32394b.n() - 1)));
        }
    }
}
