package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class M9 extends AbstractC7936ja {

    public final C8103ka f42195c;

    public M9(C8103ka c8103ka) {
        this.f42195c = c8103ka;
    }

    @Override
    public final int B() {
        return 167;
    }

    @Override
    public final C8103ka D() {
        return this.f42195c;
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92;
    }

    @Override
    public final int y() {
        return 3;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        C8103ka c8103ka = this.f42195c;
        C8103ka c8103ka2 = ((M9) w92).f42195c;
        com.android.tools.r8.graph.K k10 = (com.android.tools.r8.graph.K) o10.a();
        k10.getClass();
        return abstractC8953pf.a(k10.f36511a.b(c8103ka), k10.f36512b.b(c8103ka2));
    }

    @Override
    public final AbstractC6333Zs0 a(BiFunction biFunction, W9 w92, H9 h92) {
        return (AbstractC6333Zs0) biFunction.apply(this.f42195c, h92);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(167, this.f42195c.V());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c6382aB.a(c7607hb.a(this.f42195c));
    }
}
