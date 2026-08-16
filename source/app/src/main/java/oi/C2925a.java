package Oi;

import Bi.InterfaceC2392y;
import Ii.C2645c;
import Xi.C3333b;

public class C2925a {

    public static final int f20157e = 1024;

    public static final int f20158f = 128;

    public static final int f20159g = 128;

    public static final int f20160h = 64;

    public static final int f20161i = 72;

    public static final int f20162j = 4;

    public static final int f20163k = 1;

    public static final int f20164l = 16777216;

    public static final int f20165m = 4;

    public static final int f20166n = 1;

    public static final long f20167o = 4294967295L;

    public static final byte[] f20168p = new byte[4];

    public C3333b f20169a;

    public b[] f20170b;

    public int f20171c;

    public int f20172d;

    public static class b {

        public static final int f20173b = 128;

        public final long[] f20174a;

        public b() {
            this.f20174a = new long[128];
        }

        public b f() {
            org.bouncycastle.util.a.l0(this.f20174a, 0L);
            return this;
        }

        public final void g(b bVar) {
            System.arraycopy(bVar.f20174a, 0, this.f20174a, 0, 128);
        }

        public void h(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("input shorter than blocksize");
            }
            org.bouncycastle.util.p.y(bArr, 0, this.f20174a);
        }

        public void i(byte[] bArr) {
            if (bArr.length < 1024) {
                throw new IllegalArgumentException("output shorter than blocksize");
            }
            org.bouncycastle.util.p.L(this.f20174a, bArr, 0);
        }

        public final void j(b bVar, b bVar2) {
            long[] jArr = this.f20174a;
            long[] jArr2 = bVar.f20174a;
            long[] jArr3 = bVar2.f20174a;
            for (int i10 = 0; i10 < 128; i10++) {
                jArr[i10] = jArr2[i10] ^ jArr3[i10];
            }
        }

        public final void k(b bVar) {
            long[] jArr = this.f20174a;
            long[] jArr2 = bVar.f20174a;
            for (int i10 = 0; i10 < 128; i10++) {
                jArr[i10] = jArr[i10] ^ jArr2[i10];
            }
        }

        public final void l(b bVar, b bVar2) {
            long[] jArr = this.f20174a;
            long[] jArr2 = bVar.f20174a;
            long[] jArr3 = bVar2.f20174a;
            for (int i10 = 0; i10 < 128; i10++) {
                jArr[i10] = jArr[i10] ^ (jArr2[i10] ^ jArr3[i10]);
            }
        }
    }

    public static class c {

        public b f20175a;

        public b f20176b;

        public b f20177c;

        public b f20178d;

        public c() {
            this.f20175a = new b();
            this.f20176b = new b();
            this.f20177c = new b();
            this.f20178d = new b();
        }

        public final void d() {
            for (int i10 = 0; i10 < 8; i10++) {
                int i11 = i10 * 16;
                C2925a.C(this.f20176b, i11, i11 + 1, i11 + 2, i11 + 3, i11 + 4, i11 + 5, i11 + 6, i11 + 7, i11 + 8, i11 + 9, i11 + 10, i11 + 11, i11 + 12, i11 + 13, i11 + 14, i11 + 15);
            }
            for (int i12 = 0; i12 < 8; i12++) {
                int i13 = i12 * 2;
                C2925a.C(this.f20176b, i13, i13 + 1, i13 + 16, i13 + 17, i13 + 32, i13 + 33, i13 + 48, i13 + 49, i13 + 64, i13 + 65, i13 + 80, i13 + 81, i13 + 96, i13 + 97, i13 + 112, i13 + 113);
            }
        }

        public final void e(b bVar, b bVar2) {
            this.f20176b.g(bVar);
            d();
            bVar2.j(bVar, this.f20176b);
        }

        public final void f(b bVar, b bVar2, b bVar3) {
            this.f20175a.j(bVar, bVar2);
            this.f20176b.g(this.f20175a);
            d();
            bVar3.j(this.f20175a, this.f20176b);
        }

        public final void g(b bVar, b bVar2, b bVar3) {
            this.f20175a.j(bVar, bVar2);
            this.f20176b.g(this.f20175a);
            d();
            bVar3.l(this.f20175a, this.f20176b);
        }
    }

    public static class d {

        public int f20179a;

        public int f20180b;

        public int f20181c;
    }

    public static void A(long[] jArr, int i10, int i11, int i12, int i13) {
        long j10 = jArr[i10];
        long j11 = jArr[i11];
        long j12 = j10 + j11 + ((j10 & 4294967295L) * 2 * (4294967295L & j11));
        long h10 = org.bouncycastle.util.m.h(jArr[i12] ^ j12, i13);
        jArr[i10] = j12;
        jArr[i12] = h10;
    }

    public static void C(b bVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25) {
        long[] jArr = bVar.f20174a;
        a(jArr, i10, i14, i18, i22);
        a(jArr, i11, i15, i19, i23);
        a(jArr, i12, i16, i20, i24);
        a(jArr, i13, i17, i21, i25);
        a(jArr, i10, i15, i20, i25);
        a(jArr, i11, i16, i21, i22);
        a(jArr, i12, i17, i18, i23);
        a(jArr, i13, i14, i19, i24);
    }

    public static void a(long[] jArr, int i10, int i11, int i12, int i13) {
        A(jArr, i10, i11, i13, 32);
        A(jArr, i12, i13, i11, 24);
        A(jArr, i10, i11, i13, 16);
        A(jArr, i12, i13, i11, 63);
    }

    public static void c(byte[] bArr, InterfaceC2392y interfaceC2392y, byte[] bArr2) {
        if (bArr2 == null) {
            interfaceC2392y.update(f20168p, 0, 4);
            return;
        }
        org.bouncycastle.util.p.m(bArr2.length, bArr, 0);
        interfaceC2392y.update(bArr, 0, 4);
        interfaceC2392y.update(bArr2, 0, bArr2.length);
    }

    public static int q(d dVar) {
        return (dVar.f20179a == 0 && dVar.f20181c == 0) ? 2 : 0;
    }

    public final void B() {
        if (this.f20170b == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            b[] bVarArr = this.f20170b;
            if (i10 >= bVarArr.length) {
                return;
            }
            b bVar = bVarArr[i10];
            if (bVar != null) {
                bVar.f();
            }
            i10++;
        }
    }

    public final void d(byte[] bArr, byte[] bArr2, int i10, int i11) {
        b bVar = this.f20170b[this.f20172d - 1];
        for (int i12 = 1; i12 < this.f20169a.e(); i12++) {
            int i13 = this.f20172d;
            bVar.k(this.f20170b[(i12 * i13) + (i13 - 1)]);
        }
        bVar.i(bArr);
        r(bArr, bArr2, i10, i11);
    }

    public final void e(C3333b c3333b) {
        int f10 = c3333b.f();
        if (f10 < c3333b.e() * 8) {
            f10 = c3333b.e() * 8;
        }
        int e10 = f10 / (c3333b.e() * 4);
        this.f20171c = e10;
        this.f20172d = e10 * 4;
        u(e10 * c3333b.e() * 4);
    }

    public final void f(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[72];
        System.arraycopy(bArr2, 0, bArr3, 0, 64);
        bArr3[64] = 1;
        for (int i10 = 0; i10 < this.f20169a.e(); i10++) {
            org.bouncycastle.util.p.m(i10, bArr2, 68);
            org.bouncycastle.util.p.m(i10, bArr3, 68);
            r(bArr2, bArr, 0, 1024);
            this.f20170b[this.f20172d * i10].h(bArr);
            r(bArr3, bArr, 0, 1024);
            this.f20170b[(this.f20172d * i10) + 1].h(bArr);
        }
    }

    public final void g() {
        c cVar = new c();
        d dVar = new d();
        for (int i10 = 0; i10 < this.f20169a.d(); i10++) {
            dVar.f20179a = i10;
            for (int i11 = 0; i11 < 4; i11++) {
                dVar.f20181c = i11;
                for (int i12 = 0; i12 < this.f20169a.e(); i12++) {
                    dVar.f20180b = i12;
                    h(cVar, dVar);
                }
            }
        }
    }

    public final void h(c cVar, d dVar) {
        b bVar;
        b bVar2;
        boolean x10 = x(dVar);
        int q10 = q(dVar);
        int i10 = (dVar.f20180b * this.f20172d) + (dVar.f20181c * this.f20171c) + q10;
        int m10 = m(i10);
        if (x10) {
            b f10 = cVar.f20177c.f();
            b f11 = cVar.f20178d.f();
            t(cVar, dVar, f11, f10);
            bVar = f10;
            bVar2 = f11;
        } else {
            bVar = null;
            bVar2 = null;
        }
        boolean y10 = y(dVar);
        int i11 = q10;
        int i12 = i10;
        int i13 = m10;
        while (i11 < this.f20171c) {
            long n10 = n(cVar, i11, bVar, bVar2, i13, x10);
            int p10 = p(dVar, n10);
            int o10 = o(dVar, i11, n10, p10 == dVar.f20180b);
            b[] bVarArr = this.f20170b;
            b bVar3 = bVarArr[i13];
            b bVar4 = bVarArr[(this.f20172d * p10) + o10];
            b bVar5 = bVarArr[i12];
            if (y10) {
                cVar.g(bVar3, bVar4, bVar5);
            } else {
                cVar.f(bVar3, bVar4, bVar5);
            }
            i11++;
            i13 = i12;
            i12++;
        }
    }

    public int i(byte[] bArr, byte[] bArr2) {
        return j(bArr, bArr2, 0, bArr2.length);
    }

    public int j(byte[] bArr, byte[] bArr2, int i10, int i11) {
        if (i11 < 4) {
            throw new IllegalStateException("output length less than 4");
        }
        byte[] bArr3 = new byte[1024];
        v(bArr3, bArr, i11);
        g();
        d(bArr3, bArr2, i10, i11);
        B();
        return i11;
    }

    public int k(char[] cArr, byte[] bArr) {
        return i(this.f20169a.c().a(cArr), bArr);
    }

    public int l(char[] cArr, byte[] bArr, int i10, int i11) {
        return j(this.f20169a.c().a(cArr), bArr, i10, i11);
    }

    public final int m(int i10) {
        return i10 % this.f20172d == 0 ? (i10 + r0) - 1 : i10 - 1;
    }

    public final long n(c cVar, int i10, b bVar, b bVar2, int i11, boolean z10) {
        if (!z10) {
            return this.f20170b[i11].f20174a[0];
        }
        int i12 = i10 % 128;
        if (i12 == 0) {
            z(cVar, bVar2, bVar);
        }
        return bVar.f20174a[i12];
    }

    public final int o(d dVar, int i10, long j10, boolean z10) {
        int i11;
        int i12;
        int i13 = dVar.f20179a;
        int i14 = 0;
        int i15 = dVar.f20181c;
        if (i13 != 0) {
            int i16 = this.f20171c;
            int i17 = this.f20172d;
            int i18 = ((i15 + 1) * i16) % i17;
            int i19 = i17 - i16;
            if (z10) {
                i11 = (i19 + i10) - 1;
            } else {
                i11 = i19 + (i10 != 0 ? 0 : -1);
            }
            i14 = i18;
            i12 = i11;
        } else if (z10) {
            i12 = ((i15 * this.f20171c) + i10) - 1;
        } else {
            i12 = (i15 * this.f20171c) + (i10 != 0 ? 0 : -1);
        }
        long j11 = j10 & 4294967295L;
        return ((int) (i14 + ((i12 - 1) - ((i12 * ((j11 * j11) >>> 32)) >>> 32)))) % this.f20172d;
    }

    public final int p(d dVar, long j10) {
        int e10 = (int) ((j10 >>> 32) % this.f20169a.e());
        return (dVar.f20179a == 0 && dVar.f20181c == 0) ? dVar.f20180b : e10;
    }

    public final void r(byte[] bArr, byte[] bArr2, int i10, int i11) {
        byte[] bArr3 = new byte[4];
        org.bouncycastle.util.p.m(i11, bArr3, 0);
        if (i11 <= 64) {
            C2645c c2645c = new C2645c(i11 * 8);
            c2645c.update(bArr3, 0, 4);
            c2645c.update(bArr, 0, bArr.length);
            c2645c.c(bArr2, i10);
            return;
        }
        C2645c c2645c2 = new C2645c(512);
        byte[] bArr4 = new byte[64];
        c2645c2.update(bArr3, 0, 4);
        c2645c2.update(bArr, 0, bArr.length);
        c2645c2.c(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr2, i10, 32);
        int i12 = i10 + 32;
        int i13 = 2;
        int i14 = ((i11 + 31) / 32) - 2;
        while (i13 <= i14) {
            c2645c2.update(bArr4, 0, 64);
            c2645c2.c(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i12, 32);
            i13++;
            i12 += 32;
        }
        C2645c c2645c3 = new C2645c((i11 - (i14 * 32)) * 8);
        c2645c3.update(bArr4, 0, 64);
        c2645c3.c(bArr2, i12);
    }

    public void s(C3333b c3333b) {
        this.f20169a = c3333b;
        if (c3333b.e() < 1) {
            throw new IllegalStateException("lanes must be greater than 1");
        }
        if (c3333b.e() > 16777216) {
            throw new IllegalStateException("lanes must be less than 16777216");
        }
        if (c3333b.f() >= c3333b.e() * 2) {
            if (c3333b.d() < 1) {
                throw new IllegalStateException("iterations is less than: 1");
            }
            e(c3333b);
        } else {
            throw new IllegalStateException("memory is less than: " + (c3333b.e() * 2) + " expected " + (c3333b.e() * 2));
        }
    }

    public final void t(c cVar, d dVar, b bVar, b bVar2) {
        bVar.f20174a[0] = w(dVar.f20179a);
        bVar.f20174a[1] = w(dVar.f20180b);
        bVar.f20174a[2] = w(dVar.f20181c);
        bVar.f20174a[3] = w(this.f20170b.length);
        bVar.f20174a[4] = w(this.f20169a.d());
        bVar.f20174a[5] = w(this.f20169a.i());
        if (dVar.f20179a == 0 && dVar.f20181c == 0) {
            z(cVar, bVar, bVar2);
        }
    }

    public final void u(int i10) {
        this.f20170b = new b[i10];
        int i11 = 0;
        while (true) {
            b[] bVarArr = this.f20170b;
            if (i11 >= bVarArr.length) {
                return;
            }
            bVarArr[i11] = new b();
            i11++;
        }
    }

    public final void v(byte[] bArr, byte[] bArr2, int i10) {
        C2645c c2645c = new C2645c(512);
        org.bouncycastle.util.p.o(new int[]{this.f20169a.e(), i10, this.f20169a.f(), this.f20169a.d(), this.f20169a.j(), this.f20169a.i()}, bArr, 0);
        c2645c.update(bArr, 0, 24);
        c(bArr, c2645c, bArr2);
        c(bArr, c2645c, this.f20169a.g());
        c(bArr, c2645c, this.f20169a.h());
        c(bArr, c2645c, this.f20169a.b());
        byte[] bArr3 = new byte[72];
        c2645c.c(bArr3, 0);
        f(bArr, bArr3);
    }

    public final long w(int i10) {
        return i10 & 4294967295L;
    }

    public final boolean x(d dVar) {
        if (this.f20169a.i() != 1) {
            return this.f20169a.i() == 2 && dVar.f20179a == 0 && dVar.f20181c < 2;
        }
        return true;
    }

    public final boolean y(d dVar) {
        return (dVar.f20179a == 0 || this.f20169a.j() == 16) ? false : true;
    }

    public final void z(c cVar, b bVar, b bVar2) {
        long[] jArr = bVar.f20174a;
        jArr[6] = jArr[6] + 1;
        cVar.e(bVar, bVar2);
        cVar.e(bVar2, bVar2);
    }
}
