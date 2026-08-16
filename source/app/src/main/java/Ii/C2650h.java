package Ii;

import Bi.EnumC2383o;
import Xi.C3337d;
import java.util.Iterator;
import java.util.Stack;
import org.bouncycastle.crypto.OutputLengthException;

public class C2650h implements Bi.D, org.bouncycastle.util.n, Bi.a0 {

    public static final int f9814A = 16;

    public static final int f9815B = 32;

    public static final int f9816C = 64;

    public static final int f9817D = 0;

    public static final int f9818E = 1;

    public static final int f9819F = 2;

    public static final int f9820G = 3;

    public static final int f9821H = 4;

    public static final int f9822I = 5;

    public static final int f9823J = 6;

    public static final int f9824K = 7;

    public static final int f9825L = 8;

    public static final int f9826M = 9;

    public static final int f9827N = 10;

    public static final int f9828O = 11;

    public static final int f9829P = 12;

    public static final int f9830Q = 13;

    public static final int f9831R = 14;

    public static final int f9832S = 15;

    public static final byte[] f9833T = {2, 6, 3, 10, 7, 0, 4, 13, 1, 11, 12, 5, 9, 14, 15, 8};

    public static final int[] f9834U = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};

    public static final String f9835r = "Already outputting";

    public static final int f9836s = 8;

    public static final int f9837t = 7;

    public static final int f9838u = 64;

    public static final int f9839v = 1024;

    public static final int f9840w = 1;

    public static final int f9841x = 2;

    public static final int f9842y = 4;

    public static final int f9843z = 8;

    public final byte[] f9844a;

    public final int[] f9845b;

    public final int[] f9846c;

    public final int[] f9847d;

    public final int[] f9848e;

    public final byte[] f9849f;

    public final Stack f9850g;

    public final int f9851h;

    public boolean f9852i;

    public long f9853j;

    public int f9854k;

    public int f9855l;

    public int f9856m;

    public long f9857n;

    public int f9858o;

    public int f9859p;

    public final EnumC2383o f9860q;

    public C2650h() {
        this(256);
    }

    public final void A() {
        while (!this.f9850g.isEmpty()) {
            System.arraycopy((int[]) this.f9850g.pop(), 0, this.f9848e, 0, 8);
            System.arraycopy(this.f9846c, 0, this.f9848e, 8, 8);
            v();
            if (this.f9850g.isEmpty()) {
                C();
            }
            k();
        }
    }

    public final void B() {
        this.f9857n = 0L;
        this.f9858o = 0;
    }

    public final void C() {
        int[] iArr = this.f9847d;
        int i10 = iArr[15] | 8;
        iArr[15] = i10;
        this.f9855l = i10;
        this.f9856m = iArr[14];
        this.f9857n = 0L;
        this.f9852i = true;
        this.f9853j = -1L;
        System.arraycopy(iArr, 0, this.f9846c, 0, 8);
    }

    public final void a() {
        if (!this.f9852i) {
            for (int i10 = 0; i10 < 8; i10++) {
                int[] iArr = this.f9846c;
                int[] iArr2 = this.f9847d;
                iArr[i10] = iArr2[i10 + 8] ^ iArr2[i10];
            }
            return;
        }
        for (int i11 = 0; i11 < 8; i11++) {
            int[] iArr3 = this.f9847d;
            int i12 = i11 + 8;
            iArr3[i11] = iArr3[i11] ^ iArr3[i12];
            iArr3[i12] = iArr3[i12] ^ this.f9846c[i11];
        }
        org.bouncycastle.util.p.o(this.f9847d, this.f9844a, 0);
        this.f9859p = 0;
    }

    @Override
    public String b() {
        return "BLAKE3";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        return e(bArr, i10, f());
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new C2650h(this);
    }

    public final void d() {
        for (long j10 = this.f9857n; j10 > 0 && (j10 & 1) != 1; j10 >>= 1) {
            System.arraycopy((int[]) this.f9850g.pop(), 0, this.f9848e, 0, 8);
            System.arraycopy(this.f9846c, 0, this.f9848e, 8, 8);
            v();
            k();
        }
        this.f9850g.push(org.bouncycastle.util.a.S(this.f9846c, 8));
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        int h10 = h(bArr, i10, i11);
        reset();
        return h10;
    }

    @Override
    public int f() {
        return this.f9851h;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 > bArr.length - i11) {
            throw new OutputLengthException("output buffer too short");
        }
        if (!this.f9852i) {
            m(this.f9859p);
        }
        if (i11 >= 0) {
            long j10 = this.f9853j;
            if (j10 < 0 || i11 <= j10) {
                int i13 = this.f9859p;
                if (i13 < 64) {
                    int min = Math.min(i11, 64 - i13);
                    System.arraycopy(this.f9844a, this.f9859p, bArr, i10, min);
                    this.f9859p += min;
                    i10 += min;
                    i12 = i11 - min;
                } else {
                    i12 = i11;
                }
                while (i12 > 0) {
                    x();
                    int min2 = Math.min(i12, 64);
                    System.arraycopy(this.f9844a, 0, bArr, i10, min2);
                    this.f9859p += min2;
                    i10 += min2;
                    i12 -= min2;
                }
                this.f9853j -= i11;
                return i11;
            }
        }
        throw new IllegalArgumentException("Insufficient bytes remaining");
    }

    @Override
    public int i() {
        return 64;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        C2650h c2650h = (C2650h) nVar;
        this.f9857n = c2650h.f9857n;
        this.f9858o = c2650h.f9858o;
        this.f9854k = c2650h.f9854k;
        this.f9852i = c2650h.f9852i;
        this.f9853j = c2650h.f9853j;
        this.f9855l = c2650h.f9855l;
        this.f9856m = c2650h.f9856m;
        int[] iArr = c2650h.f9846c;
        int[] iArr2 = this.f9846c;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = c2650h.f9845b;
        int[] iArr4 = this.f9845b;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        int[] iArr5 = c2650h.f9848e;
        int[] iArr6 = this.f9848e;
        System.arraycopy(iArr5, 0, iArr6, 0, iArr6.length);
        this.f9850g.clear();
        Iterator<E> it = c2650h.f9850g.iterator();
        while (it.hasNext()) {
            this.f9850g.push(org.bouncycastle.util.a.s((int[]) it.next()));
        }
        byte[] bArr = c2650h.f9844a;
        byte[] bArr2 = this.f9844a;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f9859p = c2650h.f9859p;
    }

    public final void k() {
        q();
        int i10 = 0;
        while (true) {
            y();
            if (i10 >= 6) {
                a();
                return;
            } else {
                z();
                i10++;
            }
        }
    }

    public final void l(byte[] bArr, int i10) {
        p(64, false);
        t(bArr, i10);
        k();
        if (this.f9858o == 0) {
            d();
        }
    }

    public final void m(int i10) {
        p(i10, true);
        t(this.f9844a, 0);
        k();
        A();
    }

    public final void n() {
        this.f9857n++;
        this.f9858o = 0;
    }

    public void o(C3337d c3337d) {
        byte[] d10 = c3337d == null ? null : c3337d.d();
        byte[] c10 = c3337d != null ? c3337d.c() : null;
        reset();
        if (d10 != null) {
            r(d10);
            org.bouncycastle.util.a.e0(d10, (byte) 0);
            return;
        }
        u();
        if (c10 == null) {
            this.f9854k = 0;
            return;
        }
        this.f9854k = 32;
        update(c10, 0, c10.length);
        c(this.f9844a, 0);
        s();
        reset();
    }

    public final void p(int i10, boolean z10) {
        System.arraycopy(this.f9858o == 0 ? this.f9845b : this.f9846c, 0, this.f9847d, 0, 8);
        System.arraycopy(f9834U, 0, this.f9847d, 8, 4);
        int[] iArr = this.f9847d;
        long j10 = this.f9857n;
        iArr[12] = (int) j10;
        iArr[13] = (int) (j10 >> 32);
        iArr[14] = i10;
        int i11 = this.f9854k;
        int i12 = this.f9858o;
        iArr[15] = i11 + (i12 == 0 ? 1 : 0) + (z10 ? 2 : 0);
        int i13 = i12 + i10;
        this.f9858o = i13;
        if (i13 >= 1024) {
            n();
            int[] iArr2 = this.f9847d;
            iArr2[15] = iArr2[15] | 2;
        }
        if (z10 && this.f9850g.isEmpty()) {
            C();
        }
    }

    public final void q() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.f9849f;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = b10;
            b10 = (byte) (b10 + 1);
        }
    }

    public final void r(byte[] bArr) {
        org.bouncycastle.util.p.s(bArr, 0, this.f9845b);
        this.f9854k = 16;
    }

    @Override
    public void reset() {
        B();
        this.f9859p = 0;
        this.f9852i = false;
        org.bouncycastle.util.a.e0(this.f9844a, (byte) 0);
    }

    public final void s() {
        System.arraycopy(this.f9847d, 0, this.f9845b, 0, 8);
        this.f9854k = 64;
    }

    public final void t(byte[] bArr, int i10) {
        org.bouncycastle.util.p.s(bArr, i10, this.f9848e);
    }

    public final void u() {
        System.arraycopy(f9834U, 0, this.f9845b, 0, 8);
    }

    @Override
    public void update(byte b10) {
        if (this.f9852i) {
            throw new IllegalStateException(f9835r);
        }
        byte[] bArr = this.f9844a;
        if (bArr.length - this.f9859p == 0) {
            l(bArr, 0);
            org.bouncycastle.util.a.e0(this.f9844a, (byte) 0);
            this.f9859p = 0;
        }
        byte[] bArr2 = this.f9844a;
        int i10 = this.f9859p;
        bArr2[i10] = b10;
        this.f9859p = i10 + 1;
    }

    public final void v() {
        System.arraycopy(this.f9845b, 0, this.f9847d, 0, 8);
        System.arraycopy(f9834U, 0, this.f9847d, 8, 4);
        int[] iArr = this.f9847d;
        iArr[12] = 0;
        iArr[13] = 0;
        iArr[14] = 64;
        iArr[15] = this.f9854k | 4;
    }

    public final void w(int i10, int i11, int i12, int i13, int i14) {
        int i15 = i10 << 1;
        int[] iArr = this.f9847d;
        int i16 = i15 + 1;
        int i17 = iArr[i11] + iArr[i12] + this.f9848e[this.f9849f[i15]];
        iArr[i11] = i17;
        iArr[i14] = org.bouncycastle.util.k.i(iArr[i14] ^ i17, 16);
        int[] iArr2 = this.f9847d;
        int i18 = iArr2[i13] + iArr2[i14];
        iArr2[i13] = i18;
        iArr2[i12] = org.bouncycastle.util.k.i(i18 ^ iArr2[i12], 12);
        int[] iArr3 = this.f9847d;
        int i19 = iArr3[i11] + iArr3[i12] + this.f9848e[this.f9849f[i16]];
        iArr3[i11] = i19;
        iArr3[i14] = org.bouncycastle.util.k.i(iArr3[i14] ^ i19, 8);
        int[] iArr4 = this.f9847d;
        int i20 = iArr4[i13] + iArr4[i14];
        iArr4[i13] = i20;
        iArr4[i12] = org.bouncycastle.util.k.i(i20 ^ iArr4[i12], 7);
    }

    public final void x() {
        this.f9857n++;
        System.arraycopy(this.f9846c, 0, this.f9847d, 0, 8);
        System.arraycopy(f9834U, 0, this.f9847d, 8, 4);
        int[] iArr = this.f9847d;
        long j10 = this.f9857n;
        iArr[12] = (int) j10;
        iArr[13] = (int) (j10 >> 32);
        iArr[14] = this.f9856m;
        iArr[15] = this.f9855l;
        k();
    }

    public final void y() {
        w(0, 0, 4, 8, 12);
        w(1, 1, 5, 9, 13);
        w(2, 2, 6, 10, 14);
        w(3, 3, 7, 11, 15);
        w(4, 0, 5, 10, 15);
        w(5, 1, 6, 11, 12);
        w(6, 2, 7, 8, 13);
        w(7, 3, 4, 9, 14);
    }

    public final void z() {
        byte b10 = 0;
        while (true) {
            byte[] bArr = this.f9849f;
            if (b10 >= bArr.length) {
                return;
            }
            bArr[b10] = f9833T[bArr[b10]];
            b10 = (byte) (b10 + 1);
        }
    }

    public C2650h(int i10) {
        this(i10 <= 100 ? i10 * 8 : i10, EnumC2383o.ANY);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        if (bArr == null || i11 == 0) {
            return;
        }
        if (this.f9852i) {
            throw new IllegalStateException(f9835r);
        }
        int i14 = this.f9859p;
        if (i14 != 0) {
            i12 = 64 - i14;
            if (i12 >= i11) {
                System.arraycopy(bArr, i10, this.f9844a, i14, i11);
                i13 = this.f9859p + i11;
                this.f9859p = i13;
            } else {
                System.arraycopy(bArr, i10, this.f9844a, i14, i12);
                l(this.f9844a, 0);
                this.f9859p = 0;
                org.bouncycastle.util.a.e0(this.f9844a, (byte) 0);
            }
        } else {
            i12 = 0;
        }
        int i15 = (i10 + i11) - 64;
        int i16 = i12 + i10;
        while (i16 < i15) {
            l(bArr, i16);
            i16 += 64;
        }
        int i17 = i10 + (i11 - i16);
        System.arraycopy(bArr, i16, this.f9844a, 0, i17);
        i13 = this.f9859p + i17;
        this.f9859p = i13;
    }

    public C2650h(int i10, EnumC2383o enumC2383o) {
        this.f9844a = new byte[64];
        this.f9845b = new int[8];
        this.f9846c = new int[8];
        this.f9847d = new int[16];
        this.f9848e = new int[16];
        this.f9849f = new byte[16];
        this.f9850g = new Stack();
        this.f9860q = enumC2383o;
        this.f9851h = i10 / 8;
        Bi.r.a(Z.a(this, f() * 8, enumC2383o));
        o(null);
    }

    public C2650h(C2650h c2650h) {
        this.f9844a = new byte[64];
        this.f9845b = new int[8];
        this.f9846c = new int[8];
        this.f9847d = new int[16];
        this.f9848e = new int[16];
        this.f9849f = new byte[16];
        this.f9850g = new Stack();
        this.f9851h = c2650h.f9851h;
        this.f9860q = c2650h.f9860q;
        j(c2650h);
    }
}
