package ol;

import Bi.InterfaceC2392y;
import Bi.a0;
import Ii.L;
import Ii.O;
import Ii.Q;
import Oi.D;
import Xi.C3360o0;
import Xi.C3362p0;

public abstract class AbstractC14606o {

    @Deprecated
    public final boolean f99602a;

    public final int f99603b;

    public final int f99604c;

    public final int f99605d;

    public final int f99606e;

    public final int f99607f;

    public final int f99608g;

    public final int f99609h;

    public final int f99610i;

    public final int f99611j;

    public final int f99612k;

    public final int f99613l;

    public final int f99614m;

    public static class a extends AbstractC14606o {

        public C14598g f99615n;

        public C14595d f99616o;

        public C14596e f99617p;

        public a(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            super(z10, i10, i11, i12, i13, i14, i15);
        }

        @Override
        public byte[] a(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            byte[] bArr3 = new byte[32];
            C14596e c14596e = this.f99617p;
            byte[] bArr4 = c14592a.f99575a;
            c14596e.update(bArr4, 0, bArr4.length);
            if (this.f99602a) {
                C14595d c14595d = this.f99616o;
                byte[] bArr5 = c14592a.f99575a;
                c14595d.update(bArr5, 0, bArr5.length);
                this.f99616o.c(bArr3, 0);
                org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr3);
                this.f99617p.update(bArr3, 0, bArr2.length);
            } else {
                this.f99617p.update(bArr2, 0, bArr2.length);
            }
            this.f99617p.c(bArr3, 0);
            return org.bouncycastle.util.a.Q(bArr3, this.f99603b);
        }

        @Override
        public byte[] b(byte[] bArr, C14592a c14592a, byte[] bArr2, byte[] bArr3) {
            int i10 = this.f99603b;
            byte[] bArr4 = new byte[i10];
            byte[] bArr5 = new byte[bArr2.length + bArr3.length];
            System.arraycopy(bArr2, 0, bArr5, 0, bArr2.length);
            System.arraycopy(bArr3, 0, bArr5, bArr2.length, bArr3.length);
            byte[] h10 = h(c14592a, bArr5);
            C14598g c14598g = this.f99615n;
            byte[] bArr6 = c14592a.f99575a;
            c14598g.update(bArr6, 0, bArr6.length);
            this.f99615n.update(h10, 0, h10.length);
            this.f99615n.e(bArr4, 0, i10);
            return bArr4;
        }

        @Override
        public C14599h c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            int i10 = ((this.f99610i * this.f99611j) + 7) >> 3;
            int i11 = this.f99612k;
            int i12 = i11 / this.f99609h;
            int i13 = i11 - i12;
            int i14 = (i12 + 7) >> 3;
            int i15 = (i13 + 7) >> 3;
            int i16 = i10 + i14 + i15;
            byte[] bArr5 = new byte[i16];
            this.f99615n.update(bArr, 0, bArr.length);
            this.f99615n.update(bArr3, 0, bArr3.length);
            this.f99615n.update(bArr4, 0, bArr4.length);
            this.f99615n.e(bArr5, 0, i16);
            byte[] bArr6 = new byte[8];
            System.arraycopy(bArr5, i10, bArr6, 8 - i15, i15);
            long d10 = org.bouncycastle.util.p.d(bArr6, 0) & ((-1) >>> (64 - i13));
            byte[] bArr7 = new byte[4];
            System.arraycopy(bArr5, i15 + i10, bArr7, 4 - i14, i14);
            return new C14599h(d10, org.bouncycastle.util.p.a(bArr7, 0) & ((-1) >>> (32 - i12)), org.bouncycastle.util.a.X(bArr5, 0, i10));
        }

        @Override
        public byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a) {
            byte[] bArr3 = new byte[32];
            C14596e c14596e = this.f99617p;
            byte[] bArr4 = c14592a.f99575a;
            c14596e.update(bArr4, 0, bArr4.length);
            this.f99617p.update(bArr2, 0, bArr2.length);
            this.f99617p.c(bArr3, 0);
            return org.bouncycastle.util.a.Q(bArr3, this.f99603b);
        }

        @Override
        public byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            int i10 = this.f99603b;
            byte[] bArr4 = new byte[i10];
            this.f99615n.update(bArr, 0, bArr.length);
            this.f99615n.update(bArr2, 0, bArr2.length);
            this.f99615n.update(bArr3, 0, bArr3.length);
            this.f99615n.e(bArr4, 0, i10);
            return bArr4;
        }

        @Override
        public byte[] f(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            int i10 = this.f99603b;
            byte[] bArr3 = new byte[i10];
            byte[] h10 = h(c14592a, bArr2);
            C14598g c14598g = this.f99615n;
            byte[] bArr4 = c14592a.f99575a;
            c14598g.update(bArr4, 0, bArr4.length);
            this.f99615n.update(h10, 0, h10.length);
            this.f99615n.e(bArr3, 0, i10);
            return bArr3;
        }

        @Override
        public void g(byte[] bArr) {
            C14598g c14598g = new C14598g(bArr);
            this.f99615n = c14598g;
            this.f99616o = new C14595d(c14598g);
            this.f99617p = new C14596e(this.f99615n);
        }

        public byte[] h(C14592a c14592a, byte[] bArr) {
            if (this.f99602a) {
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                C14598g c14598g = this.f99615n;
                byte[] bArr3 = c14592a.f99575a;
                c14598g.update(bArr3, 0, bArr3.length);
                this.f99615n.e(bArr2, 0, length);
                org.bouncycastle.util.c.d(bArr.length, bArr2, bArr);
            }
            return bArr;
        }
    }

    public static class b extends AbstractC14606o {

        public final Si.k f99618n;

        public final D f99619o;

        public final byte[] f99620p;

        public final InterfaceC2392y f99621q;

        public final byte[] f99622r;

        public final int f99623s;

        public final InterfaceC2392y f99624t;

        public final byte[] f99625u;

        public org.bouncycastle.util.n f99626v;

        public org.bouncycastle.util.n f99627w;

        public b(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            super(z10, i10, i11, i12, i13, i14, i15);
            int i16;
            L l10 = new L();
            this.f99624t = l10;
            this.f99625u = new byte[l10.f()];
            if (i10 == 16) {
                this.f99621q = new L();
                this.f99618n = new Si.k(new L());
                this.f99619o = new D(new L());
                i16 = 64;
            } else {
                this.f99621q = new O();
                this.f99618n = new Si.k(new O());
                this.f99619o = new D(new O());
                i16 = 128;
            }
            this.f99623s = i16;
            this.f99620p = new byte[this.f99618n.d()];
            this.f99622r = new byte[this.f99621q.f()];
        }

        @Override
        public byte[] a(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            byte[] k10 = k(c14592a);
            if (this.f99602a) {
                bArr2 = j(org.bouncycastle.util.a.B(bArr, k10), bArr2);
            }
            ((org.bouncycastle.util.n) this.f99624t).j(this.f99627w);
            this.f99624t.update(k10, 0, k10.length);
            this.f99624t.update(bArr2, 0, bArr2.length);
            this.f99624t.c(this.f99625u, 0);
            return org.bouncycastle.util.a.X(this.f99625u, 0, this.f99603b);
        }

        @Override
        public byte[] b(byte[] bArr, C14592a c14592a, byte[] bArr2, byte[] bArr3) {
            byte[] k10 = k(c14592a);
            ((org.bouncycastle.util.n) this.f99621q).j(this.f99626v);
            this.f99621q.update(k10, 0, k10.length);
            if (this.f99602a) {
                byte[] i10 = i(org.bouncycastle.util.a.B(bArr, k10), bArr2, bArr3);
                this.f99621q.update(i10, 0, i10.length);
            } else {
                this.f99621q.update(bArr2, 0, bArr2.length);
                this.f99621q.update(bArr3, 0, bArr3.length);
            }
            this.f99621q.c(this.f99622r, 0);
            return org.bouncycastle.util.a.X(this.f99622r, 0, this.f99603b);
        }

        @Override
        public C14599h c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            int i10 = ((this.f99610i * this.f99611j) + 7) / 8;
            int i11 = this.f99612k;
            int i12 = i11 / this.f99609h;
            int i13 = i11 - i12;
            int i14 = (i12 + 7) / 8;
            int i15 = (i13 + 7) / 8;
            byte[] bArr5 = new byte[this.f99621q.f()];
            this.f99621q.update(bArr, 0, bArr.length);
            this.f99621q.update(bArr2, 0, bArr2.length);
            this.f99621q.update(bArr3, 0, bArr3.length);
            this.f99621q.update(bArr4, 0, bArr4.length);
            this.f99621q.c(bArr5, 0);
            byte[] h10 = h(org.bouncycastle.util.a.C(bArr, bArr2, bArr5), new byte[i10 + i14 + i15]);
            byte[] bArr6 = new byte[8];
            System.arraycopy(h10, i10, bArr6, 8 - i15, i15);
            long d10 = org.bouncycastle.util.p.d(bArr6, 0) & ((-1) >>> (64 - i13));
            byte[] bArr7 = new byte[4];
            System.arraycopy(h10, i15 + i10, bArr7, 4 - i14, i14);
            return new C14599h(d10, org.bouncycastle.util.p.a(bArr7, 0) & ((-1) >>> (32 - i12)), org.bouncycastle.util.a.X(h10, 0, i10));
        }

        @Override
        public byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a) {
            int length = bArr2.length;
            ((org.bouncycastle.util.n) this.f99624t).j(this.f99627w);
            byte[] k10 = k(c14592a);
            this.f99624t.update(k10, 0, k10.length);
            this.f99624t.update(bArr2, 0, bArr2.length);
            this.f99624t.c(this.f99625u, 0);
            return org.bouncycastle.util.a.X(this.f99625u, 0, length);
        }

        @Override
        public byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.f99618n.a(new C3360o0(bArr));
            this.f99618n.update(bArr2, 0, bArr2.length);
            this.f99618n.update(bArr3, 0, bArr3.length);
            this.f99618n.c(this.f99620p, 0);
            return org.bouncycastle.util.a.X(this.f99620p, 0, this.f99603b);
        }

        @Override
        public byte[] f(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            byte[] k10 = k(c14592a);
            if (this.f99602a) {
                bArr2 = h(org.bouncycastle.util.a.B(bArr, k10), bArr2);
            }
            ((org.bouncycastle.util.n) this.f99621q).j(this.f99626v);
            this.f99621q.update(k10, 0, k10.length);
            this.f99621q.update(bArr2, 0, bArr2.length);
            this.f99621q.c(this.f99622r, 0);
            return org.bouncycastle.util.a.X(this.f99622r, 0, this.f99603b);
        }

        @Override
        public void g(byte[] bArr) {
            byte[] bArr2 = new byte[this.f99623s];
            this.f99621q.update(bArr, 0, bArr.length);
            this.f99621q.update(bArr2, 0, this.f99623s - this.f99603b);
            this.f99626v = ((org.bouncycastle.util.n) this.f99621q).copy();
            this.f99621q.reset();
            this.f99624t.update(bArr, 0, bArr.length);
            this.f99624t.update(bArr2, 0, 64 - bArr.length);
            this.f99627w = ((org.bouncycastle.util.n) this.f99624t).copy();
            this.f99624t.reset();
        }

        public byte[] h(byte[] bArr, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            this.f99619o.c(new C3362p0(bArr));
            this.f99619o.a(bArr3, 0, length);
            org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr3);
            return bArr3;
        }

        public byte[] i(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            int length = bArr2.length + bArr3.length;
            byte[] bArr4 = new byte[length];
            this.f99619o.c(new C3362p0(bArr));
            this.f99619o.a(bArr4, 0, length);
            org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr4);
            org.bouncycastle.util.c.c(bArr3.length, bArr3, 0, bArr4, bArr2.length);
            return bArr4;
        }

        public byte[] j(byte[] bArr, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            D d10 = new D(new L());
            d10.c(new C3362p0(bArr));
            d10.a(bArr3, 0, length);
            org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr3);
            return bArr3;
        }

        public final byte[] k(C14592a c14592a) {
            byte[] bArr = new byte[22];
            System.arraycopy(c14592a.f99575a, 3, bArr, 0, 1);
            System.arraycopy(c14592a.f99575a, 8, bArr, 1, 8);
            System.arraycopy(c14592a.f99575a, 19, bArr, 9, 1);
            System.arraycopy(c14592a.f99575a, 20, bArr, 10, 12);
            return bArr;
        }
    }

    public static class c extends AbstractC14606o {

        public final a0 f99628n;

        public final a0 f99629o;

        public c(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
            super(z10, i10, i11, i12, i13, i14, i15);
            this.f99628n = new Q(256);
            this.f99629o = new Q(256);
        }

        @Override
        public byte[] a(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            if (this.f99602a) {
                bArr2 = h(bArr, c14592a, bArr2);
            }
            int i10 = this.f99603b;
            byte[] bArr3 = new byte[i10];
            this.f99628n.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99628n;
            byte[] bArr4 = c14592a.f99575a;
            a0Var.update(bArr4, 0, bArr4.length);
            this.f99628n.update(bArr2, 0, bArr2.length);
            this.f99628n.e(bArr3, 0, i10);
            return bArr3;
        }

        @Override
        public byte[] b(byte[] bArr, C14592a c14592a, byte[] bArr2, byte[] bArr3) {
            int i10 = this.f99603b;
            byte[] bArr4 = new byte[i10];
            this.f99628n.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99628n;
            byte[] bArr5 = c14592a.f99575a;
            a0Var.update(bArr5, 0, bArr5.length);
            if (this.f99602a) {
                byte[] i11 = i(bArr, c14592a, bArr2, bArr3);
                this.f99628n.update(i11, 0, i11.length);
            } else {
                this.f99628n.update(bArr2, 0, bArr2.length);
                this.f99628n.update(bArr3, 0, bArr3.length);
            }
            this.f99628n.e(bArr4, 0, i10);
            return bArr4;
        }

        @Override
        public C14599h c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
            int i10 = ((this.f99610i * this.f99611j) + 7) / 8;
            int i11 = this.f99612k;
            int i12 = i11 / this.f99609h;
            int i13 = i11 - i12;
            int i14 = (i12 + 7) / 8;
            int i15 = (i13 + 7) / 8;
            int i16 = i10 + i14 + i15;
            byte[] bArr5 = new byte[i16];
            this.f99628n.update(bArr, 0, bArr.length);
            this.f99628n.update(bArr2, 0, bArr2.length);
            this.f99628n.update(bArr3, 0, bArr3.length);
            this.f99628n.update(bArr4, 0, bArr4.length);
            this.f99628n.e(bArr5, 0, i16);
            byte[] bArr6 = new byte[8];
            System.arraycopy(bArr5, i10, bArr6, 8 - i15, i15);
            long d10 = org.bouncycastle.util.p.d(bArr6, 0) & ((-1) >>> (64 - i13));
            byte[] bArr7 = new byte[4];
            System.arraycopy(bArr5, i15 + i10, bArr7, 4 - i14, i14);
            return new C14599h(d10, org.bouncycastle.util.p.a(bArr7, 0) & ((-1) >>> (32 - i12)), org.bouncycastle.util.a.X(bArr5, 0, i10));
        }

        @Override
        public byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a) {
            this.f99628n.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99628n;
            byte[] bArr3 = c14592a.f99575a;
            a0Var.update(bArr3, 0, bArr3.length);
            this.f99628n.update(bArr2, 0, bArr2.length);
            int i10 = this.f99603b;
            byte[] bArr4 = new byte[i10];
            this.f99628n.e(bArr4, 0, i10);
            return bArr4;
        }

        @Override
        public byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) {
            this.f99628n.update(bArr, 0, bArr.length);
            this.f99628n.update(bArr2, 0, bArr2.length);
            this.f99628n.update(bArr3, 0, bArr3.length);
            int i10 = this.f99603b;
            byte[] bArr4 = new byte[i10];
            this.f99628n.e(bArr4, 0, i10);
            return bArr4;
        }

        @Override
        public byte[] f(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            if (this.f99602a) {
                bArr2 = h(bArr, c14592a, bArr2);
            }
            int i10 = this.f99603b;
            byte[] bArr3 = new byte[i10];
            this.f99628n.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99628n;
            byte[] bArr4 = c14592a.f99575a;
            a0Var.update(bArr4, 0, bArr4.length);
            this.f99628n.update(bArr2, 0, bArr2.length);
            this.f99628n.e(bArr3, 0, i10);
            return bArr3;
        }

        @Override
        public void g(byte[] bArr) {
        }

        public byte[] h(byte[] bArr, C14592a c14592a, byte[] bArr2) {
            int length = bArr2.length;
            byte[] bArr3 = new byte[length];
            this.f99629o.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99629o;
            byte[] bArr4 = c14592a.f99575a;
            a0Var.update(bArr4, 0, bArr4.length);
            this.f99629o.e(bArr3, 0, length);
            org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr3);
            return bArr3;
        }

        public byte[] i(byte[] bArr, C14592a c14592a, byte[] bArr2, byte[] bArr3) {
            int length = bArr2.length + bArr3.length;
            byte[] bArr4 = new byte[length];
            this.f99629o.update(bArr, 0, bArr.length);
            a0 a0Var = this.f99629o;
            byte[] bArr5 = c14592a.f99575a;
            a0Var.update(bArr5, 0, bArr5.length);
            this.f99629o.e(bArr4, 0, length);
            org.bouncycastle.util.c.d(bArr2.length, bArr2, bArr4);
            org.bouncycastle.util.c.c(bArr3.length, bArr3, 0, bArr4, bArr2.length);
            return bArr4;
        }
    }

    public AbstractC14606o(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f99603b = i10;
        if (i11 == 16) {
            this.f99605d = 4;
            this.f99607f = (i10 * 8) / 4;
            if (i10 > 8) {
                if (i10 <= 136) {
                    this.f99608g = 3;
                } else {
                    if (i10 > 256) {
                        throw new IllegalArgumentException("cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}");
                    }
                    this.f99608g = 4;
                }
                this.f99604c = i11;
                this.f99606e = this.f99607f + this.f99608g;
                this.f99602a = z10;
                this.f99609h = i12;
                this.f99610i = i13;
                this.f99611j = i14;
                this.f99612k = i15;
                this.f99613l = i15 / i12;
                this.f99614m = 1 << i13;
            }
            this.f99608g = 2;
            this.f99604c = i11;
            this.f99606e = this.f99607f + this.f99608g;
            this.f99602a = z10;
            this.f99609h = i12;
            this.f99610i = i13;
            this.f99611j = i14;
            this.f99612k = i15;
            this.f99613l = i15 / i12;
            this.f99614m = 1 << i13;
        }
        if (i11 != 256) {
            throw new IllegalArgumentException("wots_w assumed 16 or 256");
        }
        this.f99605d = 8;
        this.f99607f = (i10 * 8) / 8;
        if (i10 <= 1) {
            this.f99608g = 1;
            this.f99604c = i11;
            this.f99606e = this.f99607f + this.f99608g;
            this.f99602a = z10;
            this.f99609h = i12;
            this.f99610i = i13;
            this.f99611j = i14;
            this.f99612k = i15;
            this.f99613l = i15 / i12;
            this.f99614m = 1 << i13;
        }
        if (i10 > 256) {
            throw new IllegalArgumentException("cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}");
        }
        this.f99608g = 2;
        this.f99604c = i11;
        this.f99606e = this.f99607f + this.f99608g;
        this.f99602a = z10;
        this.f99609h = i12;
        this.f99610i = i13;
        this.f99611j = i14;
        this.f99612k = i15;
        this.f99613l = i15 / i12;
        this.f99614m = 1 << i13;
    }

    public abstract byte[] a(byte[] bArr, C14592a c14592a, byte[] bArr2);

    public abstract byte[] b(byte[] bArr, C14592a c14592a, byte[] bArr2, byte[] bArr3);

    public abstract C14599h c(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4);

    public abstract byte[] d(byte[] bArr, byte[] bArr2, C14592a c14592a);

    public abstract byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public abstract byte[] f(byte[] bArr, C14592a c14592a, byte[] bArr2);

    public abstract void g(byte[] bArr);
}
