package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C5052Dn extends AbstractC5168Fn {

    public static final boolean f39645f = true;

    public int f39646e;

    public C5052Dn(C4960Bz c4960Bz) {
        super(c4960Bz);
        this.f39646e = -1;
    }

    @Override
    public final void a(C5458Kn c5458Kn, ArrayList arrayList) {
        AbstractC5635Np c9150qp;
        C4960Bz c4960Bz = (C4960Bz) this.f40310a;
        int a10 = c5458Kn.a(c4960Bz).a();
        AbstractC5168Fn a11 = c5458Kn.a(c4960Bz.v2());
        int a12 = a11.a() - a10;
        if (a12 < 0) {
            c5458Kn.f41777p = true;
        }
        C10471yk0 G02 = a11.f40310a.G0();
        if (G02 != null && this.f39646e == a11.b() && G02.getPosition().o()) {
            AbstractC9644tn b10 = G02.b(c5458Kn);
            b10.e(a());
            arrayList.add(b10);
            return;
        }
        int i10 = this.f39646e;
        if (i10 == a12) {
            for (int i11 = 0; i11 < this.f39646e; i11++) {
                C8154kr c8154kr = new C8154kr();
                c8154kr.e(a() + i11);
                arrayList.add(c8154kr);
            }
            return;
        }
        if (i10 == 1) {
            if (!f39645f && a12 == 0) {
                throw new AssertionError();
            }
            c9150qp = new C9150qp(a12);
        } else if (i10 != 2) {
            if (i10 == 3) {
                c9150qp = new C8983pp(a12);
            } else {
                throw new C5417Jv0("Unexpected size for goto instruction: " + this.f39646e);
            }
        } else if (a12 == 0) {
            arrayList.add(new C8154kr());
            c9150qp = new C9150qp(-1);
        } else {
            c9150qp = new C8816op(a12);
        }
        c9150qp.e(a());
        arrayList.add(c9150qp);
    }

    @Override
    public final int b() {
        if (f39645f || this.f39646e > 0) {
            return this.f39646e;
        }
        throw new AssertionError();
    }

    @Override
    public final int c() {
        return !f39645f ? 3 : 3;
    }

    @Override
    public final int d() {
        if (f39645f) {
            return 1;
        }
        new C9150qp(42);
        return 1;
    }

    @Override
    public final int a(C5458Kn c5458Kn) {
        int a10;
        int a11;
        boolean z10 = f39645f;
        if (!z10 && this.f39646e >= 0) {
            throw new AssertionError();
        }
        C4960Bz c4960Bz = (C4960Bz) this.f40310a;
        AbstractC5168Fn a12 = c5458Kn.a(c4960Bz.v2());
        if (c4960Bz == a12.f40310a) {
            this.f39646e = 2;
            return 2;
        }
        boolean z11 = AbstractC5168Fn.f40309d;
        if (!z11 && this.f40312c < 0) {
            throw new AssertionError();
        }
        int i10 = this.f40312c;
        if (!z11 && a12.f40312c < 0) {
            throw new AssertionError();
        }
        int i11 = a12.f40312c;
        if (i11 < i10) {
            a10 = a();
            a11 = a12.a();
        } else {
            a10 = i11 - (i10 - a());
            a11 = a();
        }
        int i12 = a10 - a11;
        if (i12 <= 127) {
            this.f39646e = 1;
        } else if (i12 <= 32767) {
            this.f39646e = 2;
        } else {
            this.f39646e = 3;
        }
        if (a12.f40310a.g2() && a12.f40310a.getPosition().o()) {
            if (!z10 && (a12 instanceof C4878An)) {
                throw new AssertionError();
            }
            this.f39646e = Math.min(a12.b(), this.f39646e);
        }
        if (z10 || this.f39646e != 0) {
            return this.f39646e;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn) {
        return abstractC5168Fn instanceof C5052Dn;
    }
}
