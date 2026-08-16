package bl;

import Ii.Q;
import android.util.DisplayMetrics;
import bl.q;
import java.security.SecureRandom;

public class C3900a {

    public static final int f33435A = 1753;

    public static final int f33436B = 32;

    public static final int f33437C = 64;

    public static final int f33438D = 32;

    public static final int f33439E = 64;

    public static final int f33440F = 320;

    public static final int f33441G = 416;

    public static final int f33442w = 256;

    public static final int f33443x = 8380417;

    public static final int f33444y = 58728449;

    public static final int f33445z = 13;

    public final SecureRandom f33446a;

    public final Q f33447b = new Q(128);

    public final Q f33448c = new Q(256);

    public final int f33449d;

    public final int f33450e;

    public final int f33451f;

    public final int f33452g;

    public final int f33453h;

    public final int f33454i;

    public final int f33455j;

    public final int f33456k;

    public final int f33457l;

    public final int f33458m;

    public final int f33459n;

    public final int f33460o;

    public final int f33461p;

    public final int f33462q;

    public final int f33463r;

    public final int f33464s;

    public final int f33465t;

    public final int f33466u;

    public final q f33467v;

    public C3900a(int i10, SecureRandom secureRandom, boolean z10) {
        int i11;
        int i12;
        int i13;
        this.f33453h = i10;
        if (i10 != 2) {
            if (i10 == 3) {
                this.f33454i = 6;
                this.f33455j = 5;
                this.f33456k = 4;
                this.f33457l = 49;
                this.f33458m = 196;
                this.f33459n = 524288;
                this.f33460o = 261888;
                this.f33461p = 55;
                this.f33450e = DisplayMetrics.DENSITY_XXXHIGH;
                this.f33451f = 128;
                this.f33452g = 128;
                i13 = 48;
            } else {
                if (i10 != 5) {
                    throw new IllegalArgumentException("The mode " + i10 + "is not supported by Crystals Dilithium!");
                }
                this.f33454i = 8;
                this.f33455j = 7;
                this.f33456k = 2;
                this.f33457l = 60;
                this.f33458m = 120;
                this.f33459n = 524288;
                this.f33460o = 261888;
                this.f33461p = 75;
                this.f33450e = DisplayMetrics.DENSITY_XXXHIGH;
                this.f33451f = 128;
                this.f33452g = 96;
                i13 = 64;
            }
            this.f33462q = i13;
        } else {
            this.f33454i = 4;
            this.f33455j = 4;
            this.f33456k = 2;
            this.f33457l = 39;
            this.f33458m = 78;
            this.f33459n = 131072;
            this.f33460o = 95232;
            this.f33461p = 80;
            this.f33450e = 576;
            this.f33451f = 192;
            this.f33452g = 96;
            this.f33462q = 32;
        }
        this.f33467v = z10 ? new q.a() : new q.b();
        this.f33446a = secureRandom;
        int i14 = this.f33461p;
        int i15 = this.f33454i;
        int i16 = i14 + i15;
        this.f33449d = i16;
        this.f33463r = (i15 * 320) + 32;
        int i17 = this.f33455j;
        int i18 = this.f33452g;
        this.f33464s = (i17 * i18) + 96 + (i18 * i15) + (i15 * 416);
        this.f33465t = this.f33462q + (i17 * this.f33450e) + i16;
        int i19 = this.f33459n;
        if (i19 == 131072) {
            i11 = this.f33467v.f33512b;
            i12 = i11 + 575;
        } else {
            if (i19 != 524288) {
                throw new RuntimeException("Wrong Dilithium Gamma1!");
            }
            i11 = this.f33467v.f33512b;
            i12 = i11 + 639;
        }
        this.f33466u = i12 / i11;
    }

    public q a() {
        return this.f33467v;
    }

    public byte[][] b() {
        byte[] bArr = new byte[32];
        byte[] bArr2 = new byte[128];
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[32];
        n nVar = new n(this);
        m mVar = new m(this);
        l lVar = new l(this);
        l lVar2 = new l(this);
        l lVar3 = new l(this);
        this.f33446a.nextBytes(bArr);
        this.f33448c.update(bArr, 0, 32);
        this.f33448c.e(bArr2, 0, 128);
        System.arraycopy(bArr2, 0, bArr4, 0, 32);
        System.arraycopy(bArr2, 32, bArr5, 0, 64);
        System.arraycopy(bArr2, 96, bArr6, 0, 32);
        nVar.b(bArr4);
        mVar.k(bArr5, (short) 0);
        lVar.q(bArr5, (short) this.f33455j);
        m mVar2 = new m(this);
        mVar.c(mVar2);
        mVar2.h();
        nVar.c(lVar2, mVar2);
        lVar2.l();
        lVar2.f();
        lVar2.a(lVar);
        lVar2.c();
        lVar2.k(lVar3);
        byte[] a10 = j.a(lVar2, this);
        this.f33448c.update(bArr4, 0, 32);
        this.f33448c.update(a10, 0, a10.length);
        this.f33448c.e(bArr3, 0, 64);
        byte[][] b10 = j.b(bArr4, bArr3, bArr6, lVar3, mVar, lVar, this);
        return new byte[][]{b10[0], b10[1], b10[2], b10[3], b10[4], b10[5], a10};
    }

    public int c() {
        return this.f33465t;
    }

    public int d() {
        return this.f33463r;
    }

    public int e() {
        return this.f33464s;
    }

    public int f() {
        return this.f33458m;
    }

    public int g() {
        return this.f33462q;
    }

    public int h() {
        return this.f33456k;
    }

    public int i() {
        return this.f33459n;
    }

    public int j() {
        return this.f33460o;
    }

    public int k() {
        return this.f33454i;
    }

    public int l() {
        return this.f33455j;
    }

    public int m() {
        return this.f33453h;
    }

    public int n() {
        return this.f33461p;
    }

    public int o() {
        return this.f33452g;
    }

    public int p() {
        return this.f33449d;
    }

    public int q() {
        return this.f33451f;
    }

    public int r() {
        return this.f33450e;
    }

    public int s() {
        return this.f33457l;
    }

    public int t() {
        return this.f33466u;
    }

    public Q u() {
        return this.f33447b;
    }

    public Q v() {
        return this.f33448c;
    }

    public byte[] w(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        return y(bArr, i10, bArr2, bArr3, bArr4, bArr5, bArr6, bArr7);
    }

    public boolean x(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, byte[] bArr4) {
        return z(bArr2, i10, bArr, bArr.length, bArr3, bArr4);
    }

    public byte[] y(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        l lVar;
        l lVar2;
        byte[] bArr8 = new byte[this.f33465t + i10];
        byte[] bArr9 = new byte[64];
        byte[] bArr10 = new byte[64];
        m mVar = new m(this);
        m mVar2 = new m(this);
        m mVar3 = new m(this);
        l lVar3 = new l(this);
        l lVar4 = new l(this);
        l lVar5 = new l(this);
        l lVar6 = new l(this);
        l lVar7 = new l(this);
        k kVar = new k(this);
        n nVar = new n(this);
        k kVar2 = kVar;
        l lVar8 = lVar7;
        l lVar9 = lVar6;
        l lVar10 = lVar5;
        l lVar11 = lVar4;
        l lVar12 = lVar3;
        j.e(lVar3, mVar, lVar4, bArr5, bArr6, bArr7, this);
        int i11 = 0;
        this.f33448c.update(bArr4, 0, 64);
        this.f33448c.update(bArr, 0, i10);
        this.f33448c.e(bArr9, 0, 64);
        byte[] bArr11 = new byte[32];
        SecureRandom secureRandom = this.f33446a;
        if (secureRandom != null) {
            secureRandom.nextBytes(bArr11);
        }
        byte[] Q10 = org.bouncycastle.util.a.Q(bArr3, 128);
        System.arraycopy(bArr11, 0, Q10, 32, 32);
        System.arraycopy(bArr9, 0, Q10, 64, 64);
        this.f33448c.update(Q10, 0, 128);
        this.f33448c.e(bArr10, 0, 64);
        nVar.b(bArr2);
        mVar.h();
        lVar11.j();
        lVar12.j();
        int i12 = 0;
        short s10 = 0;
        while (i12 < 1000) {
            i12++;
            short s11 = (short) (s10 + 1);
            mVar2.l(bArr10, s10);
            mVar2.c(mVar3);
            mVar3.h();
            l lVar13 = lVar10;
            nVar.c(lVar13, mVar3);
            lVar13.l();
            lVar13.f();
            lVar13.c();
            l lVar14 = lVar9;
            lVar13.d(lVar14);
            System.arraycopy(lVar13.h(), i11, bArr8, i11, this.f33454i * this.f33451f);
            this.f33448c.update(bArr9, i11, 64);
            this.f33448c.update(bArr8, i11, this.f33454i * this.f33451f);
            this.f33448c.e(bArr8, i11, this.f33462q);
            k kVar3 = kVar2;
            kVar3.b(org.bouncycastle.util.a.X(bArr8, i11, 32));
            kVar3.n();
            mVar3.g(kVar3, mVar);
            mVar3.f();
            mVar3.a(mVar2);
            mVar3.i();
            if (mVar3.b(this.f33459n - this.f33458m)) {
                lVar2 = lVar11;
                lVar = lVar8;
            } else {
                l lVar15 = lVar11;
                lVar = lVar8;
                lVar.i(kVar3, lVar15);
                lVar.f();
                lVar14.o(lVar);
                lVar14.l();
                lVar2 = lVar15;
                if (lVar14.b(this.f33460o - this.f33458m)) {
                    continue;
                } else {
                    l lVar16 = lVar12;
                    lVar.i(kVar3, lVar16);
                    lVar.f();
                    lVar.l();
                    if (lVar.b(this.f33460o)) {
                        lVar12 = lVar16;
                    } else {
                        lVar14.a(lVar);
                        lVar14.c();
                        lVar12 = lVar16;
                        if (lVar.g(lVar14, lVar13) <= this.f33461p) {
                            return j.c(bArr8, mVar3, lVar, this);
                        }
                    }
                }
            }
            lVar10 = lVar13;
            s10 = s11;
            lVar9 = lVar14;
            lVar8 = lVar;
            lVar11 = lVar2;
            i11 = 0;
            kVar2 = kVar3;
        }
        return null;
    }

    public boolean z(byte[] bArr, int i10, byte[] bArr2, int i11, byte[] bArr3, byte[] bArr4) {
        byte[] bArr5 = new byte[64];
        byte[] bArr6 = new byte[this.f33462q];
        k kVar = new k(this);
        n nVar = new n(this);
        m mVar = new m(this);
        l lVar = new l(this);
        l lVar2 = new l(this);
        l lVar3 = new l(this);
        if (i10 != this.f33465t) {
            return false;
        }
        l d10 = j.d(lVar, bArr4, this);
        if (!j.f(mVar, lVar3, bArr, this)) {
            return false;
        }
        byte[] X10 = org.bouncycastle.util.a.X(bArr, 0, this.f33462q);
        if (mVar.b(i() - f())) {
            return false;
        }
        this.f33448c.update(bArr3, 0, bArr3.length);
        this.f33448c.update(bArr4, 0, bArr4.length);
        this.f33448c.e(bArr5, 0, 64);
        this.f33448c.update(bArr5, 0, 64);
        this.f33448c.update(bArr2, 0, i11);
        this.f33448c.c(bArr5, 0);
        kVar.b(org.bouncycastle.util.a.X(X10, 0, 32));
        nVar.b(bArr3);
        mVar.h();
        nVar.c(lVar2, mVar);
        kVar.n();
        d10.n();
        d10.j();
        d10.i(kVar, d10);
        lVar2.o(d10);
        lVar2.l();
        lVar2.f();
        lVar2.c();
        lVar2.r(lVar2, lVar3);
        byte[] h10 = lVar2.h();
        Q q10 = new Q(256);
        q10.update(bArr5, 0, 64);
        q10.update(h10, 0, this.f33454i * this.f33451f);
        q10.e(bArr6, 0, this.f33462q);
        for (int i12 = 0; i12 < this.f33462q; i12++) {
            if (X10[i12] != bArr6[i12]) {
                return false;
            }
        }
        return true;
    }
}
