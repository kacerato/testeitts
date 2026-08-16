package ll;

import Bi.C2371c;
import Xi.C3335c;
import java.security.SecureRandom;

public class C14158d {

    public short[][][] f96539A;

    public short[][][] f96540B;

    public short[][][] f96541C;

    public short[][][] f96542D;

    public short[][][] f96543E;

    public short[][][] f96544F;

    public short[][][] f96545G;

    public SecureRandom f96546a;

    public n f96547b;

    public h f96548c;

    public C14155a f96549d;

    public int f96550e;

    public int f96551f;

    public int f96552g;

    public byte[] f96553h;

    public byte[] f96554i;

    public short[][] f96555j;

    public short[][] f96556k;

    public short[][] f96557l;

    public short[][] f96558m;

    public short[][] f96559n;

    public short[][][] f96560o;

    public short[][][] f96561p;

    public short[][][] f96562q;

    public short[][][] f96563r;

    public short[][][] f96564s;

    public short[][][] f96565t;

    public short[][][] f96566u;

    public short[][][] f96567v;

    public short[][][] f96568w;

    public short[][][] f96569x;

    public short[][][] f96570y;

    public short[][][] f96571z;

    public C14158d(h hVar, SecureRandom secureRandom) {
        this.f96549d = new C14155a();
        this.f96548c = hVar;
        this.f96546a = secureRandom;
        this.f96547b = hVar.l();
        this.f96550e = this.f96548c.j();
        this.f96551f = this.f96548c.h();
        this.f96552g = this.f96548c.i();
    }

    public final void a() {
        this.f96560o = m.b(this.f96567v);
        this.f96561p = new short[this.f96551f][];
        for (int i10 = 0; i10 < this.f96551f; i10++) {
            this.f96561p[i10] = this.f96549d.b(this.f96567v[i10]);
            short[][][] sArr = this.f96561p;
            sArr[i10] = this.f96549d.j(sArr[i10], this.f96556k);
            short[][][] sArr2 = this.f96561p;
            sArr2[i10] = this.f96549d.a(sArr2[i10], this.f96568w[i10]);
        }
        int i11 = this.f96552g;
        this.f96563r = new short[i11][];
        this.f96564s = new short[i11][];
        this.f96565t = new short[i11][];
        this.f96566u = new short[i11][];
        this.f96562q = m.b(this.f96540B);
        for (int i12 = 0; i12 < this.f96552g; i12++) {
            short[][] b10 = this.f96549d.b(this.f96540B[i12]);
            this.f96563r[i12] = this.f96549d.j(b10, this.f96556k);
            short[][][] sArr3 = this.f96563r;
            sArr3[i12] = this.f96549d.a(sArr3[i12], this.f96541C[i12]);
            this.f96564s[i12] = this.f96549d.j(b10, this.f96559n);
            short[][] j10 = this.f96549d.j(this.f96541C[i12], this.f96558m);
            short[][][] sArr4 = this.f96564s;
            sArr4[i12] = this.f96549d.a(sArr4[i12], j10);
            short[][][] sArr5 = this.f96564s;
            sArr5[i12] = this.f96549d.a(sArr5[i12], this.f96542D[i12]);
            short[][] a10 = this.f96549d.a(this.f96549d.j(this.f96540B[i12], this.f96556k), this.f96541C[i12]);
            short[][] o10 = this.f96549d.o(this.f96556k);
            this.f96565t[i12] = this.f96549d.j(o10, a10);
            short[][][] sArr6 = this.f96565t;
            sArr6[i12] = this.f96549d.a(sArr6[i12], this.f96543E[i12]);
            short[][][] sArr7 = this.f96565t;
            sArr7[i12] = this.f96549d.n(sArr7[i12]);
            this.f96566u[i12] = this.f96549d.j(o10, this.f96564s[i12]);
            C14155a c14155a = this.f96549d;
            short[][] j11 = c14155a.j(c14155a.o(this.f96541C[i12]), this.f96559n);
            short[][][] sArr8 = this.f96566u;
            sArr8[i12] = this.f96549d.a(sArr8[i12], j11);
            short[][] j12 = this.f96549d.j(this.f96549d.b(this.f96543E[i12]), this.f96558m);
            short[][][] sArr9 = this.f96566u;
            sArr9[i12] = this.f96549d.a(sArr9[i12], j12);
            short[][][] sArr10 = this.f96566u;
            sArr10[i12] = this.f96549d.a(sArr10[i12], this.f96544F[i12]);
        }
    }

    public final void b() {
        short[][] o10 = this.f96549d.o(this.f96556k);
        short[][] o11 = this.f96549d.o(this.f96557l);
        this.f96567v = m.b(this.f96560o);
        this.f96568w = new short[this.f96551f][];
        for (int i10 = 0; i10 < this.f96551f; i10++) {
            this.f96568w[i10] = this.f96549d.b(this.f96560o[i10]);
            short[][][] sArr = this.f96568w;
            sArr[i10] = this.f96549d.j(sArr[i10], this.f96556k);
            short[][][] sArr2 = this.f96568w;
            sArr2[i10] = this.f96549d.a(sArr2[i10], this.f96561p[i10]);
        }
        d(o10, o11);
        int i11 = this.f96552g;
        this.f96541C = new short[i11][];
        this.f96542D = new short[i11][];
        this.f96543E = new short[i11][];
        this.f96544F = new short[i11][];
        this.f96540B = m.b(this.f96562q);
        for (int i12 = 0; i12 < this.f96552g; i12++) {
            short[][] b10 = this.f96549d.b(this.f96562q[i12]);
            this.f96541C[i12] = this.f96549d.j(b10, this.f96556k);
            short[][][] sArr3 = this.f96541C;
            sArr3[i12] = this.f96549d.a(sArr3[i12], this.f96563r[i12]);
            this.f96542D[i12] = this.f96549d.j(b10, this.f96557l);
            short[][] j10 = this.f96549d.j(this.f96563r[i12], this.f96558m);
            short[][][] sArr4 = this.f96542D;
            sArr4[i12] = this.f96549d.a(sArr4[i12], j10);
            short[][][] sArr5 = this.f96542D;
            sArr5[i12] = this.f96549d.a(sArr5[i12], this.f96564s[i12]);
            this.f96543E[i12] = this.f96549d.j(o10, this.f96549d.a(this.f96549d.j(this.f96562q[i12], this.f96556k), this.f96563r[i12]));
            short[][][] sArr6 = this.f96543E;
            sArr6[i12] = this.f96549d.a(sArr6[i12], this.f96565t[i12]);
            short[][][] sArr7 = this.f96543E;
            sArr7[i12] = this.f96549d.n(sArr7[i12]);
            this.f96544F[i12] = this.f96549d.j(o10, this.f96542D[i12]);
            C14155a c14155a = this.f96549d;
            short[][] j11 = c14155a.j(c14155a.o(this.f96563r[i12]), this.f96557l);
            short[][][] sArr8 = this.f96544F;
            sArr8[i12] = this.f96549d.a(sArr8[i12], j11);
            short[][] j12 = this.f96549d.j(this.f96549d.b(this.f96565t[i12]), this.f96558m);
            short[][][] sArr9 = this.f96544F;
            sArr9[i12] = this.f96549d.a(sArr9[i12], j12);
            short[][][] sArr10 = this.f96544F;
            sArr10[i12] = this.f96549d.a(sArr10[i12], this.f96566u[i12]);
        }
        e(o11);
    }

    public final void c() {
        short[][] o10 = this.f96549d.o(this.f96556k);
        short[][] o11 = this.f96549d.o(this.f96557l);
        d(o10, o11);
        e(o11);
    }

    public final void d(short[][] sArr, short[][] sArr2) {
        int i10 = this.f96551f;
        this.f96569x = new short[i10][];
        this.f96570y = new short[i10][];
        this.f96571z = new short[i10][];
        this.f96539A = new short[i10][];
        for (int i11 = 0; i11 < this.f96551f; i11++) {
            short[][] j10 = this.f96549d.j(this.f96561p[i11], this.f96558m);
            this.f96569x[i11] = this.f96549d.b(this.f96560o[i11]);
            short[][][] sArr3 = this.f96569x;
            sArr3[i11] = this.f96549d.j(sArr3[i11], this.f96557l);
            short[][][] sArr4 = this.f96569x;
            sArr4[i11] = this.f96549d.a(sArr4[i11], j10);
            this.f96570y[i11] = this.f96549d.j(this.f96560o[i11], this.f96556k);
            short[][][] sArr5 = this.f96570y;
            sArr5[i11] = this.f96549d.a(sArr5[i11], this.f96561p[i11]);
            short[][][] sArr6 = this.f96570y;
            sArr6[i11] = this.f96549d.j(sArr, sArr6[i11]);
            short[][][] sArr7 = this.f96570y;
            sArr7[i11] = this.f96549d.n(sArr7[i11]);
            C14155a c14155a = this.f96549d;
            short[][] j11 = c14155a.j(c14155a.o(this.f96561p[i11]), this.f96557l);
            this.f96571z[i11] = this.f96549d.j(sArr, this.f96569x[i11]);
            short[][][] sArr8 = this.f96571z;
            sArr8[i11] = this.f96549d.a(sArr8[i11], j11);
            this.f96539A[i11] = this.f96549d.a(this.f96549d.j(this.f96560o[i11], this.f96557l), j10);
            short[][][] sArr9 = this.f96539A;
            sArr9[i11] = this.f96549d.j(sArr2, sArr9[i11]);
            short[][][] sArr10 = this.f96539A;
            sArr10[i11] = this.f96549d.n(sArr10[i11]);
        }
    }

    public final void e(short[][] sArr) {
        this.f96545G = new short[this.f96552g][];
        for (int i10 = 0; i10 < this.f96552g; i10++) {
            this.f96545G[i10] = this.f96549d.j(this.f96562q[i10], this.f96557l);
            short[][] j10 = this.f96549d.j(this.f96563r[i10], this.f96558m);
            short[][][] sArr2 = this.f96545G;
            sArr2[i10] = this.f96549d.a(sArr2[i10], j10);
            short[][][] sArr3 = this.f96545G;
            sArr3[i10] = this.f96549d.a(sArr3[i10], this.f96564s[i10]);
            short[][][] sArr4 = this.f96545G;
            sArr4[i10] = this.f96549d.j(sArr, sArr4[i10]);
            short[][] a10 = this.f96549d.a(this.f96549d.j(this.f96565t[i10], this.f96558m), this.f96566u[i10]);
            C14155a c14155a = this.f96549d;
            short[][] j11 = c14155a.j(c14155a.o(this.f96558m), a10);
            short[][][] sArr5 = this.f96545G;
            sArr5[i10] = this.f96549d.a(sArr5[i10], j11);
            short[][][] sArr6 = this.f96545G;
            sArr6[i10] = this.f96549d.n(sArr6[i10]);
        }
    }

    public final void f() {
        this.f96559n = this.f96549d.a(this.f96549d.j(this.f96556k, this.f96558m), this.f96557l);
    }

    public final void g() {
        byte[] bArr = new byte[this.f96548c.d()];
        this.f96553h = bArr;
        this.f96546a.nextBytes(bArr);
        C14157c c14157c = new C14157c(this.f96553h, this.f96548c.a());
        o(c14157c);
        int i10 = this.f96551f;
        int i11 = this.f96550e;
        this.f96560o = m.h(c14157c, i10, i11, i11, true);
        int i12 = this.f96551f;
        this.f96561p = m.h(c14157c, i12, this.f96550e, i12, false);
        int i13 = this.f96552g;
        int i14 = this.f96550e;
        this.f96562q = m.h(c14157c, i13, i14, i14, true);
        this.f96563r = m.h(c14157c, this.f96552g, this.f96550e, this.f96551f, false);
        int i15 = this.f96552g;
        this.f96564s = m.h(c14157c, i15, this.f96550e, i15, false);
        int i16 = this.f96552g;
        int i17 = this.f96551f;
        this.f96565t = m.h(c14157c, i16, i17, i17, true);
        int i18 = this.f96552g;
        this.f96566u = m.h(c14157c, i18, this.f96551f, i18, false);
        b();
        f();
        this.f96567v = this.f96549d.l(this.f96555j, this.f96540B, this.f96567v);
        this.f96568w = this.f96549d.l(this.f96555j, this.f96541C, this.f96568w);
        this.f96569x = this.f96549d.l(this.f96555j, this.f96542D, this.f96569x);
        this.f96570y = this.f96549d.l(this.f96555j, this.f96543E, this.f96570y);
        this.f96571z = this.f96549d.l(this.f96555j, this.f96544F, this.f96571z);
        this.f96539A = this.f96549d.l(this.f96555j, this.f96545G, this.f96539A);
    }

    public final void h() {
        byte[] bArr = new byte[this.f96548c.d()];
        this.f96553h = bArr;
        this.f96546a.nextBytes(bArr);
        byte[] bArr2 = new byte[this.f96548c.b()];
        this.f96554i = bArr2;
        this.f96546a.nextBytes(bArr2);
        l();
        c();
        this.f96569x = this.f96549d.l(this.f96555j, this.f96542D, this.f96569x);
        this.f96570y = this.f96549d.l(this.f96555j, this.f96543E, this.f96570y);
        this.f96571z = this.f96549d.l(this.f96555j, this.f96544F, this.f96571z);
        this.f96539A = this.f96549d.l(this.f96555j, this.f96545G, this.f96539A);
    }

    public C2371c i() {
        h();
        j jVar = new j(this.f96548c, this.f96554i, this.f96569x, this.f96570y, this.f96571z, this.f96539A, this.f96545G);
        return new C2371c((C3335c) jVar, (C3335c) new i(this.f96548c, this.f96553h, this.f96555j, this.f96556k, this.f96558m, this.f96559n, this.f96560o, this.f96561p, this.f96562q, this.f96563r, this.f96564s, this.f96565t, this.f96566u, jVar.getEncoded()));
    }

    public C2371c j() {
        g();
        j jVar = new j(this.f96548c, this.f96567v, this.f96568w, this.f96569x, this.f96570y, this.f96571z, this.f96539A, this.f96540B, this.f96541C, this.f96542D, this.f96543E, this.f96544F, this.f96545G);
        return new C2371c((C3335c) jVar, (C3335c) new i(this.f96548c, this.f96553h, this.f96555j, this.f96556k, this.f96558m, this.f96559n, this.f96560o, this.f96561p, this.f96562q, this.f96563r, this.f96564s, this.f96565t, this.f96566u, jVar.getEncoded()));
    }

    public C2371c k() {
        h();
        j jVar = new j(this.f96548c, this.f96554i, this.f96569x, this.f96570y, this.f96571z, this.f96539A, this.f96545G);
        return new C2371c((C3335c) jVar, (C3335c) new i(this.f96548c, this.f96554i, this.f96553h, jVar.getEncoded()));
    }

    public final void l() {
        C14157c c14157c = new C14157c(this.f96553h, this.f96548c.a());
        C14157c c14157c2 = new C14157c(this.f96554i, this.f96548c.a());
        o(c14157c);
        f();
        n(c14157c2);
        this.f96567v = this.f96549d.l(this.f96555j, this.f96540B, this.f96567v);
        this.f96568w = this.f96549d.l(this.f96555j, this.f96541C, this.f96568w);
        a();
    }

    public i m() {
        this.f96553h = org.bouncycastle.util.a.p(this.f96553h);
        this.f96554i = org.bouncycastle.util.a.p(this.f96554i);
        l();
        return new i(this.f96548c, this.f96553h, this.f96555j, this.f96556k, this.f96558m, this.f96559n, this.f96560o, this.f96561p, this.f96562q, this.f96563r, this.f96564s, this.f96565t, this.f96566u, null);
    }

    public final void n(SecureRandom secureRandom) {
        int i10 = this.f96551f;
        int i11 = this.f96550e;
        this.f96567v = m.h(secureRandom, i10, i11, i11, true);
        int i12 = this.f96551f;
        this.f96568w = m.h(secureRandom, i12, this.f96550e, i12, false);
        int i13 = this.f96552g;
        int i14 = this.f96550e;
        this.f96540B = m.h(secureRandom, i13, i14, i14, true);
        this.f96541C = m.h(secureRandom, this.f96552g, this.f96550e, this.f96551f, false);
        int i15 = this.f96552g;
        this.f96542D = m.h(secureRandom, i15, this.f96550e, i15, false);
        int i16 = this.f96552g;
        int i17 = this.f96551f;
        this.f96543E = m.h(secureRandom, i16, i17, i17, true);
        int i18 = this.f96552g;
        this.f96544F = m.h(secureRandom, i18, this.f96551f, i18, false);
    }

    public final void o(SecureRandom secureRandom) {
        this.f96555j = m.i(secureRandom, this.f96551f, this.f96552g);
        this.f96556k = m.i(secureRandom, this.f96550e, this.f96551f);
        this.f96557l = m.i(secureRandom, this.f96550e, this.f96552g);
        this.f96558m = m.i(secureRandom, this.f96551f, this.f96552g);
    }

    public C14158d(h hVar, byte[] bArr, byte[] bArr2) {
        this.f96549d = new C14155a();
        this.f96548c = hVar;
        this.f96546a = null;
        this.f96547b = hVar.l();
        this.f96554i = bArr;
        this.f96553h = bArr2;
        this.f96550e = this.f96548c.j();
        this.f96551f = this.f96548c.h();
        this.f96552g = this.f96548c.i();
    }
}
