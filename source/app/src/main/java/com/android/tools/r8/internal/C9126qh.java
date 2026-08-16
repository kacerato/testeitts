package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public class C9126qh extends AbstractC8291lh {

    public static final boolean f51850m = true;

    public final long f51851l;

    public C9126qh(C10340xw0 c10340xw0, long j10) {
        super(c10340xw0);
        if (!f51850m) {
            c10340xw0.getClass();
            if (!(c10340xw0 instanceof C7838ix) && !c10340xw0.f53886c.w1()) {
                throw new AssertionError();
            }
        }
        this.f51851l = j10;
    }

    public final boolean A2() {
        return this.f51851l == 0;
    }

    @Override
    public C9126qh J() {
        return this;
    }

    @Override
    public Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE == this) {
            return true;
        }
        if (!abstractC10561zE.w1()) {
            return false;
        }
        C9126qh J10 = abstractC10561zE.J();
        return J10.s2() == s2() && J10.f51851l == this.f51851l;
    }

    @Override
    public final boolean e2() {
        return true;
    }

    @Override
    public final boolean g1() {
        return true;
    }

    @Override
    public final int p2() {
        if (f51850m) {
            return 0;
        }
        throw new AssertionError((Object) "Const has no register arguments.");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 15;
    }

    @Override
    public final String toString() {
        if (this.f54320e == null) {
            return super.toString() + " " + this.f51851l + " (dead)";
        }
        return super.toString() + " " + this.f51851l + " (" + ((Object) a()) + ")";
    }

    public final int u2() {
        if (f51850m || s2() == EnumC5477Kw0.f41825c || s2() == EnumC5477Kw0.f41824b) {
            return (int) this.f51851l;
        }
        throw new AssertionError();
    }

    public final long v2() {
        if (f51850m || s2() == EnumC5477Kw0.f41827e) {
            return this.f51851l;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean w1() {
        return true;
    }

    public long w2() {
        return this.f51851l;
    }

    public final boolean x2() {
        long j10 = this.f51851l;
        return -128 <= j10 && j10 <= 127;
    }

    public final boolean y2() {
        return s2() == EnumC5477Kw0.f41825c && u2() == 1;
    }

    public final boolean z2() {
        return s2() == EnumC5477Kw0.f41825c && u2() == 0;
    }

    public static C9126qh a(C10340xw0 c10340xw0, C9126qh c9126qh) {
        if (f51850m || c10340xw0 != c9126qh.d()) {
            return new C9126qh(c10340xw0, c9126qh.w2());
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        if (!this.f54320e.T()) {
            c5458Kn.getClass();
            c5458Kn.a(this, new C4878An(this));
            return;
        }
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        if (!s2().a()) {
            EnumC5477Kw0 s22 = s2();
            s22.getClass();
            if (s22 != EnumC5477Kw0.f41825c && s22 != EnumC5477Kw0.f41826d) {
                if (!f51850m && !s2().b()) {
                    throw new AssertionError();
                }
                if (P10.a(this.f51851l)) {
                    c5458Kn.a(this, new C8479mo(b10, (int) this.f51851l));
                    return;
                }
                long j10 = this.f51851l;
                if ((281474976710655L & j10) == 0) {
                    c5458Kn.a(this, new C8980po(b10, (int) (this.f51851l >>> 48)));
                    return;
                } else if (-2147483648L <= j10 && j10 <= 2147483647L) {
                    c5458Kn.a(this, new C8646no(b10, (int) this.f51851l));
                    return;
                } else {
                    c5458Kn.a(this, new C8813oo(b10, this.f51851l));
                    return;
                }
            }
        }
        if (!f51850m) {
            long j11 = this.f51851l;
            if (-2147483648L > j11 || j11 > 2147483647L) {
                throw new AssertionError();
            }
        }
        if ((b10 & 15) == b10) {
            long j12 = this.f51851l;
            if (-8 <= j12 && j12 <= 7) {
                c5458Kn.a(this, new C7145eo(b10, (int) this.f51851l));
                return;
            }
        }
        if (P10.a(this.f51851l)) {
            c5458Kn.a(this, new C6812co(b10, (int) this.f51851l));
        } else if ((this.f51851l & Sg.b.f23266s) == 0) {
            c5458Kn.a(this, new C7646ho(b10, ((int) this.f51851l) >>> 16));
        } else {
            c5458Kn.a(this, new C7312fo(b10, (int) this.f51851l));
        }
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        if (s2().a()) {
            c7543h9.a(new C10212x9(), this);
        } else {
            c7543h9.a(new C10546z9(this.f51851l, s2()), this);
        }
    }

    @Override
    public final C9126qh a(long j10) {
        if (this.f51851l == j10) {
            return this;
        }
        return null;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        if (!f51850m && !s2().a()) {
            throw new AssertionError();
        }
        c4798y.b();
        return C4724u1.f37808E6;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        G1 g12 = c4798y.f38427t;
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        if (a().y()) {
            AbstractC8999pu0 a10 = a();
            g12.getClass();
            if (G1.f40367f || a10.y()) {
                return C5283Hm0.f40867c;
            }
            throw new AssertionError();
        }
        return g12.a(this.f51851l, a());
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return a();
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        if (f51850m || !A2() || a().x()) {
            return;
        }
        AbstractC8999pu0 a10 = a();
        a10.getClass();
        if (!(a10 instanceof C6301Zd0)) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a(Set set) {
        long j10 = this.f51851l;
        return j10 == 0 || j10 == 1;
    }

    @Override
    public final void a(PS ps) {
        EnumC5477Kw0 s22 = s2();
        long j10 = this.f51851l;
        ps.getClass();
        int i10 = IS.f41102a[s22.ordinal()];
        if (i10 == 1) {
            ps.a();
            return;
        }
        if (i10 == 2) {
            ps.c((int) j10);
            return;
        }
        if (i10 == 3) {
            ps.b((int) j10);
        } else if (i10 == 4) {
            ps.b(j10);
        } else {
            if (i10 == 5) {
                ps.a(j10);
                return;
            }
            throw new C5417Jv0();
        }
    }
}
