package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class C6440ab extends AbstractC7936ja {

    public static final boolean f46559d = true;

    public final EnumC5477Kw0 f46560c;

    public C6440ab(EnumC5477Kw0 enumC5477Kw0) {
        this.f46560c = enumC5477Kw0;
    }

    @Override
    public final int B() {
        int i10 = AbstractC6291Za.f46265a[this.f46560c.ordinal()];
        if (i10 == 1) {
            return 172;
        }
        if (i10 == 2) {
            return 174;
        }
        if (i10 == 3) {
            return 173;
        }
        if (i10 == 4) {
            return 175;
        }
        if (i10 == 5) {
            return 176;
        }
        throw new C5417Jv0("Unexpected return type: " + ((Object) this.f46560c));
    }

    public EnumC5477Kw0 W() {
        return this.f46560c;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(B());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c6382aB.d(c9775ub.a().f51280a);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        if (f46559d || !o82.c().z0().S0()) {
            return h92.a(c4798y, o82, o82.c().z0()).f();
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC6333Zs0 a(BiFunction biFunction, W9 w92, H9 h92) {
        return new C6276Ys0(h92);
    }
}
