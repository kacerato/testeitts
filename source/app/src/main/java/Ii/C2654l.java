package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2382n;
import Xi.C3360o0;
import Xi.y0;
import java.lang.reflect.Array;

public class C2654l implements Bi.D, org.bouncycastle.util.n {

    public static final int f9882t = 32;

    public static final byte[] f9883u = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};

    public final EnumC2383o f9884a;

    public byte[] f9885b;

    public byte[] f9886c;

    public byte[] f9887d;

    public byte[] f9888e;

    public byte[][] f9889f;

    public byte[] f9890g;

    public int f9891h;

    public long f9892i;

    public InterfaceC2374f f9893j;

    public byte[] f9894k;

    public byte[] f9895l;

    public byte[] f9896m;

    public short[] f9897n;

    public short[] f9898o;

    public byte[] f9899p;

    public byte[] f9900q;

    public byte[] f9901r;

    public byte[] f9902s;

    public C2654l() {
        this(EnumC2383o.ANY);
    }

    private void o() {
        org.bouncycastle.util.p.J(this.f9892i * 8, this.f9886c, 0);
        while (this.f9891h != 0) {
            update((byte) 0);
        }
        q(this.f9886c, 0);
        q(this.f9888e, 0);
    }

    public final byte[] a(byte[] bArr) {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f9896m[i10] = (byte) (bArr[i10] ^ bArr[i10 + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f9896m, 0, bArr, 24, 8);
        return bArr;
    }

    @Override
    public String b() {
        return "GOST3411";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        o();
        byte[] bArr2 = this.f9885b;
        System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
        reset();
        return 32;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2654l(this);
    }

    public final void d(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, int i11) {
        this.f9893j.a(true, new C3360o0(bArr));
        this.f9893j.g(bArr3, i11, bArr2, i10);
    }

    @Override
    public int f() {
        return 32;
    }

    @Override
    public int i() {
        return 32;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        C2654l c2654l = (C2654l) nVar;
        byte[] bArr = c2654l.f9894k;
        this.f9894k = bArr;
        this.f9893j.a(true, new y0(null, bArr));
        reset();
        byte[] bArr2 = c2654l.f9885b;
        System.arraycopy(bArr2, 0, this.f9885b, 0, bArr2.length);
        byte[] bArr3 = c2654l.f9886c;
        System.arraycopy(bArr3, 0, this.f9886c, 0, bArr3.length);
        byte[] bArr4 = c2654l.f9887d;
        System.arraycopy(bArr4, 0, this.f9887d, 0, bArr4.length);
        byte[] bArr5 = c2654l.f9888e;
        System.arraycopy(bArr5, 0, this.f9888e, 0, bArr5.length);
        byte[] bArr6 = c2654l.f9889f[1];
        System.arraycopy(bArr6, 0, this.f9889f[1], 0, bArr6.length);
        byte[] bArr7 = c2654l.f9889f[2];
        System.arraycopy(bArr7, 0, this.f9889f[2], 0, bArr7.length);
        byte[] bArr8 = c2654l.f9889f[3];
        System.arraycopy(bArr8, 0, this.f9889f[3], 0, bArr8.length);
        byte[] bArr9 = c2654l.f9890g;
        System.arraycopy(bArr9, 0, this.f9890g, 0, bArr9.length);
        this.f9891h = c2654l.f9891h;
        this.f9892i = c2654l.f9892i;
    }

    public final byte[] k(byte[] bArr) {
        for (int i10 = 0; i10 < 8; i10++) {
            byte[] bArr2 = this.f9895l;
            int i11 = i10 * 4;
            bArr2[i11] = bArr[i10];
            bArr2[i11 + 1] = bArr[i10 + 8];
            bArr2[i11 + 2] = bArr[i10 + 16];
            bArr2[i11 + 3] = bArr[i10 + 24];
        }
        return this.f9895l;
    }

    public final void l(byte[] bArr, short[] sArr) {
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            int i11 = i10 * 2;
            sArr[i10] = (short) ((bArr[i11] & 255) | ((bArr[i11 + 1] << 8) & 65280));
        }
    }

    public final void m(short[] sArr, byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            int i11 = i10 * 2;
            short s10 = sArr[i10];
            bArr[i11 + 1] = (byte) (s10 >> 8);
            bArr[i11] = (byte) s10;
        }
    }

    public InterfaceC2382n n() {
        return Z.a(this, 256, this.f9884a);
    }

    public final void p(byte[] bArr) {
        l(bArr, this.f9897n);
        short[] sArr = this.f9898o;
        short[] sArr2 = this.f9897n;
        sArr[15] = (short) (((((sArr2[0] ^ sArr2[1]) ^ sArr2[2]) ^ sArr2[3]) ^ sArr2[12]) ^ sArr2[15]);
        System.arraycopy(sArr2, 1, sArr, 0, 15);
        m(this.f9898o, bArr);
    }

    public void q(byte[] bArr, int i10) {
        System.arraycopy(bArr, i10, this.f9887d, 0, 32);
        System.arraycopy(this.f9885b, 0, this.f9900q, 0, 32);
        System.arraycopy(this.f9887d, 0, this.f9901r, 0, 32);
        for (int i11 = 0; i11 < 32; i11++) {
            this.f9902s[i11] = (byte) (this.f9900q[i11] ^ this.f9901r[i11]);
        }
        d(k(this.f9902s), this.f9899p, 0, this.f9885b, 0);
        for (int i12 = 1; i12 < 4; i12++) {
            byte[] a10 = a(this.f9900q);
            for (int i13 = 0; i13 < 32; i13++) {
                this.f9900q[i13] = (byte) (a10[i13] ^ this.f9889f[i12][i13]);
            }
            this.f9901r = a(a(this.f9901r));
            for (int i14 = 0; i14 < 32; i14++) {
                this.f9902s[i14] = (byte) (this.f9900q[i14] ^ this.f9901r[i14]);
            }
            int i15 = i12 * 8;
            d(k(this.f9902s), this.f9899p, i15, this.f9885b, i15);
        }
        for (int i16 = 0; i16 < 12; i16++) {
            p(this.f9899p);
        }
        for (int i17 = 0; i17 < 32; i17++) {
            byte[] bArr2 = this.f9899p;
            bArr2[i17] = (byte) (bArr2[i17] ^ this.f9887d[i17]);
        }
        p(this.f9899p);
        for (int i18 = 0; i18 < 32; i18++) {
            byte[] bArr3 = this.f9899p;
            bArr3[i18] = (byte) (this.f9885b[i18] ^ bArr3[i18]);
        }
        for (int i19 = 0; i19 < 61; i19++) {
            p(this.f9899p);
        }
        byte[] bArr4 = this.f9899p;
        byte[] bArr5 = this.f9885b;
        System.arraycopy(bArr4, 0, bArr5, 0, bArr5.length);
    }

    public final void r(byte[] bArr) {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr2 = this.f9888e;
            if (i10 == bArr2.length) {
                return;
            }
            int i12 = (bArr2[i10] & 255) + (bArr[i10] & 255) + i11;
            bArr2[i10] = (byte) i12;
            i11 = i12 >>> 8;
            i10++;
        }
    }

    @Override
    public void reset() {
        this.f9892i = 0L;
        this.f9891h = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f9885b;
            if (i10 >= bArr.length) {
                break;
            }
            bArr[i10] = 0;
            i10++;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = this.f9886c;
            if (i11 >= bArr2.length) {
                break;
            }
            bArr2[i11] = 0;
            i11++;
        }
        int i12 = 0;
        while (true) {
            byte[] bArr3 = this.f9887d;
            if (i12 >= bArr3.length) {
                break;
            }
            bArr3[i12] = 0;
            i12++;
        }
        int i13 = 0;
        while (true) {
            byte[] bArr4 = this.f9889f[1];
            if (i13 >= bArr4.length) {
                break;
            }
            bArr4[i13] = 0;
            i13++;
        }
        int i14 = 0;
        while (true) {
            byte[] bArr5 = this.f9889f[3];
            if (i14 >= bArr5.length) {
                break;
            }
            bArr5[i14] = 0;
            i14++;
        }
        int i15 = 0;
        while (true) {
            byte[] bArr6 = this.f9888e;
            if (i15 >= bArr6.length) {
                break;
            }
            bArr6[i15] = 0;
            i15++;
        }
        int i16 = 0;
        while (true) {
            byte[] bArr7 = this.f9890g;
            if (i16 >= bArr7.length) {
                byte[] bArr8 = f9883u;
                System.arraycopy(bArr8, 0, this.f9889f[2], 0, bArr8.length);
                return;
            } else {
                bArr7[i16] = 0;
                i16++;
            }
        }
    }

    @Override
    public void update(byte b10) {
        byte[] bArr = this.f9890g;
        int i10 = this.f9891h;
        int i11 = i10 + 1;
        this.f9891h = i11;
        bArr[i10] = b10;
        if (i11 == bArr.length) {
            r(bArr);
            q(this.f9890g, 0);
            this.f9891h = 0;
        }
        this.f9892i++;
    }

    public C2654l(EnumC2383o enumC2383o) {
        this.f9885b = new byte[32];
        this.f9886c = new byte[32];
        this.f9887d = new byte[32];
        this.f9888e = new byte[32];
        this.f9889f = (byte[][]) Array.newInstance(Byte.TYPE, 4, 32);
        this.f9890g = new byte[32];
        this.f9893j = new Li.C();
        this.f9895l = new byte[32];
        this.f9896m = new byte[8];
        this.f9897n = new short[16];
        this.f9898o = new short[16];
        this.f9899p = new byte[32];
        this.f9900q = new byte[32];
        this.f9901r = new byte[32];
        this.f9902s = new byte[32];
        this.f9884a = enumC2383o;
        Bi.r.a(n());
        byte[] m10 = Li.C.m("D-A");
        this.f9894k = m10;
        this.f9893j.a(true, new y0(null, m10));
        reset();
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        while (this.f9891h != 0 && i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
        while (true) {
            byte[] bArr2 = this.f9890g;
            if (i11 < bArr2.length) {
                break;
            }
            System.arraycopy(bArr, i10, bArr2, 0, bArr2.length);
            r(this.f9890g);
            q(this.f9890g, 0);
            byte[] bArr3 = this.f9890g;
            i10 += bArr3.length;
            i11 -= bArr3.length;
            this.f9892i += bArr3.length;
        }
        while (i11 > 0) {
            update(bArr[i10]);
            i10++;
            i11--;
        }
    }

    public C2654l(C2654l c2654l) {
        this.f9885b = new byte[32];
        this.f9886c = new byte[32];
        this.f9887d = new byte[32];
        this.f9888e = new byte[32];
        this.f9889f = (byte[][]) Array.newInstance(Byte.TYPE, 4, 32);
        this.f9890g = new byte[32];
        this.f9893j = new Li.C();
        this.f9895l = new byte[32];
        this.f9896m = new byte[8];
        this.f9897n = new short[16];
        this.f9898o = new short[16];
        this.f9899p = new byte[32];
        this.f9900q = new byte[32];
        this.f9901r = new byte[32];
        this.f9902s = new byte[32];
        this.f9884a = c2654l.f9884a;
        Bi.r.a(n());
        j(c2654l);
    }

    public C2654l(byte[] bArr) {
        this(bArr, EnumC2383o.ANY);
    }

    public C2654l(byte[] bArr, EnumC2383o enumC2383o) {
        this.f9885b = new byte[32];
        this.f9886c = new byte[32];
        this.f9887d = new byte[32];
        this.f9888e = new byte[32];
        this.f9889f = (byte[][]) Array.newInstance(Byte.TYPE, 4, 32);
        this.f9890g = new byte[32];
        this.f9893j = new Li.C();
        this.f9895l = new byte[32];
        this.f9896m = new byte[8];
        this.f9897n = new short[16];
        this.f9898o = new short[16];
        this.f9899p = new byte[32];
        this.f9900q = new byte[32];
        this.f9901r = new byte[32];
        this.f9902s = new byte[32];
        this.f9884a = enumC2383o;
        Bi.r.a(n());
        byte[] p10 = org.bouncycastle.util.a.p(bArr);
        this.f9894k = p10;
        this.f9893j.a(true, new y0(null, p10));
        reset();
    }
}
