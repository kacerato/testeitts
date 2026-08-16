package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class C10443yb extends W9 {

    public static final boolean f54049e = true;

    public final int f54050c;

    public final EnumC5477Kw0 f54051d;

    public C10443yb(EnumC5477Kw0 enumC5477Kw0, int i10) {
        this.f54050c = i10;
        this.f54051d = enumC5477Kw0;
    }

    @Override
    public final boolean A() {
        return false;
    }

    @Override
    public final int B() {
        int i10 = AbstractC10276xb.f53781a[this.f54051d.ordinal()];
        if (i10 == 1) {
            return 58;
        }
        if (i10 == 2) {
            return 54;
        }
        if (i10 == 3) {
            return 56;
        }
        if (i10 == 4) {
            return 55;
        }
        if (i10 == 5) {
            return 57;
        }
        throw new C5417Jv0("Unexpected type " + ((Object) this.f54051d));
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this.f54050c, w92.w().f54050c);
    }

    @Override
    public final C10443yb w() {
        return this;
    }

    @Override
    public final int y() {
        int i10 = this.f54050c;
        if (i10 <= 3) {
            return 1;
        }
        return i10 < 256 ? 2 : 4;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f54050c);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.d(B(), this.f54050c);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    public final H9 a(O8 o82, H9 h92, S60 s60) {
        return h92.a(this.f54050c, s60, o82);
    }

    public final H9 a(C4798y c4798y, O8 o82, H9 h92, S60 s60) {
        int i10 = this.f54050c;
        D70 d10 = this.f54051d.d();
        h92.getClass();
        if (!H9.f40696b) {
            d10.getClass();
            if (!(d10 instanceof C9736uI) && !(d10 instanceof C5188Fx) && !(d10 instanceof C9593tU) && !(d10 instanceof C8160kt)) {
                throw new AssertionError();
            }
        }
        return h92.a(i10, InterfaceC8008jy.a(d10.a(c4798y.b())), o82);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        C8774ob a10 = c9775ub.a();
        EnumC5477Kw0 enumC5477Kw0 = this.f54051d;
        int i10 = this.f54050c;
        c9775ub.a(new C9608tb(c9775ub.f52885a, i10, a10.f51283d));
        int i11 = c9775ub.f52885a.a(i10).f51280a;
        int i12 = a10.f51280a;
        c6382aB.getClass();
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i11, i12);
    }

    @Override
    public final H9 a(H9 h92, final C4798y c4798y, final O8 o82) {
        if (this.f54051d.a()) {
            return h92.b(new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C10443yb.this.a(o82, (H9) obj, (S60) obj2);
                }
            });
        }
        if (!f54049e && this.f54051d.a()) {
            throw new AssertionError();
        }
        EnumC5477Kw0 enumC5477Kw0 = this.f54051d;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10443yb.this.a(c4798y, o82, (H9) obj, (S60) obj2);
            }
        };
        h92.getClass();
        return h92.a(c4798y, enumC5477Kw0.a(c4798y.b()), o82, biFunction);
    }
}
