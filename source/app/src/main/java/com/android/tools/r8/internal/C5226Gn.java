package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C5226Gn extends AbstractC5168Fn {

    public static final boolean f40587f = true;

    public int f40588e;

    public C5226Gn(C6433aY c6433aY) {
        super(c6433aY);
        this.f40588e = -1;
    }

    @Override
    public final void a(C5458Kn c5458Kn, ArrayList arrayList) {
        AbstractC5635Np c5522Lq;
        C6433aY c6433aY = (C6433aY) this.f40310a;
        AbstractC8999pu0 a10 = c6433aY.a();
        int c10 = c(c5458Kn);
        int b10 = b(c5458Kn);
        int i10 = this.f40588e;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    if (a10.z()) {
                        c5522Lq = new C5232Gq(b10, c10);
                    } else if (a10.A()) {
                        c5522Lq = new C5811Qq(b10, c10);
                    } else if (a10.y()) {
                        c5522Lq = new C5464Kq(b10, c10);
                    } else {
                        throw new C5417Jv0("Unexpected type: " + ((Object) c6433aY.s2()));
                    }
                } else {
                    throw new C5417Jv0("Unexpected size: " + this.f40588e);
                }
            } else if (a10.z()) {
                c5522Lq = new C5406Jq(b10, c10);
            } else if (a10.A()) {
                c5522Lq = new C5927Sq(b10, c10);
            } else if (a10.y()) {
                c5522Lq = new C5579Mq(b10, c10);
            } else {
                throw new C5417Jv0("Unexpected type: " + ((Object) c6433aY.s2()));
            }
        } else if (c10 == b10) {
            c5522Lq = new C8154kr();
        } else if (a10.z()) {
            c5522Lq = new C5290Hq(b10, c10);
        } else if (a10.A()) {
            c5522Lq = new C5869Rq(b10, c10);
        } else if (a10.y()) {
            c5522Lq = new C5522Lq(b10, c10);
        } else {
            throw new C5417Jv0("Unexpected type: " + ((Object) c6433aY.s2()));
        }
        c5522Lq.e(a());
        arrayList.add(c5522Lq);
    }

    public final int b(C5458Kn c5458Kn) {
        return c5458Kn.f41765d.b(((C6433aY) this.f40310a).u2(), ((C6433aY) this.f40310a).f54322g);
    }

    public final int c(C5458Kn c5458Kn) {
        return c5458Kn.f41765d.a(((C6433aY) this.f40310a).v2(), ((C6433aY) this.f40310a).f54322g);
    }

    @Override
    public final int d() {
        if (f40587f) {
            return 1;
        }
        new C8154kr();
        new C5290Hq(0, 0);
        return 1;
    }

    @Override
    public final int b() {
        if (f40587f || this.f40588e > 0) {
            return this.f40588e;
        }
        throw new AssertionError();
    }

    @Override
    public final int c() {
        if (f40587f) {
            return 3;
        }
        new C5232Gq(0, 0);
        return 3;
    }

    @Override
    public final boolean a(AbstractC5168Fn abstractC5168Fn, C5458Kn c5458Kn) {
        if (!(abstractC5168Fn instanceof C5226Gn)) {
            return false;
        }
        C5226Gn c5226Gn = (C5226Gn) abstractC5168Fn;
        return c(c5458Kn) == c5226Gn.c(c5458Kn) && b(c5458Kn) == c5226Gn.b(c5458Kn);
    }

    @Override
    public final int a(C5458Kn c5458Kn) {
        int c10 = c(c5458Kn);
        int b10 = b(c5458Kn);
        if (c10 == b10) {
            this.f40588e = 1;
        } else if (c10 <= 15 && b10 <= 15) {
            this.f40588e = 1;
        } else if (b10 <= 255) {
            this.f40588e = 2;
        } else {
            this.f40588e = 3;
        }
        return this.f40588e;
    }
}
