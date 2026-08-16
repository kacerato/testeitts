package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.function.BiFunction;
import java.util.function.Function;

public class Q9 extends AbstractC9377s9 {

    public static final boolean f43489f = true;

    public Q9(NB nb2, EnumC5477Kw0 enumC5477Kw0, C8103ka c8103ka) {
        super(nb2, enumC5477Kw0, c8103ka);
    }

    @Override
    public final int B() {
        return W();
    }

    public final int W() {
        switch (P9.f43134a[this.f52292c.ordinal()]) {
            case 1:
                return this.f52293d.a() ? 165 : 159;
            case 2:
                return 162;
            case 3:
                return 163;
            case 4:
                return 164;
            case 5:
                return 161;
            case 6:
                return this.f52293d.a() ? 166 : 160;
            default:
                throw new C5417Jv0("Unexpected type " + ((Object) this.f52293d));
        }
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        Q9 q92 = (Q9) w92;
        boolean z10 = f43489f;
        if (!z10 && this.f52292c != q92.f52292c) {
            throw new AssertionError();
        }
        if (!z10 && this.f52293d != q92.f52293d) {
            throw new AssertionError();
        }
        C8103ka c8103ka = this.f52294e;
        C8103ka c8103ka2 = q92.f52294e;
        com.android.tools.r8.graph.K k10 = (com.android.tools.r8.graph.K) o10.a();
        k10.getClass();
        return abstractC8953pf.a(k10.f36511a.b(c8103ka), k10.f36512b.b(c8103ka2));
    }

    @Override
    public final AbstractC6333Zs0 a(final BiFunction biFunction, final W9 w92, H9 h92) {
        return ((AbstractC6333Zs0) biFunction.apply(this.f52294e, h92)).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Q9.a(BiFunction.this, w92, (C6276Ys0) obj);
            }
        });
    }

    public static AbstractC6333Zs0 a(BiFunction biFunction, W9 w92, C6276Ys0 c6276Ys0) {
        return (AbstractC6333Zs0) biFunction.apply(w92, c6276Ys0.f());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(W(), this.f52294e.V());
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        int i11 = c9775ub.a().f51280a;
        int a10 = c7607hb.a(this.f52294e);
        int i12 = c7607hb.f48604n + 1;
        NB nb2 = this.f52292c;
        EnumC5477Kw0 enumC5477Kw0 = this.f52293d;
        c6382aB.getClass();
        EnumC5592Mw0 a11 = EnumC5592Mw0.a(enumC5477Kw0);
        if (a10 == i12) {
            if (!C6382aB.f46438D && a10 != i12) {
                throw new AssertionError();
            }
            W5 w52 = ((VA) c6382aB.f46442a.get(a10)).f44991a;
            w52.d();
            c6382aB.f46451j.g(w52);
            c6382aB.a(w52, c6382aB.f46462u.c(a10));
            c6382aB.a((AbstractC9408sL) new C4960Bz());
            return;
        }
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(c6382aB.b(i11, a11));
        arrayList.add(c6382aB.b(i10, a11));
        EB eb2 = new EB(nb2, arrayList);
        W5 w53 = ((VA) c6382aB.f46442a.get(a10)).f44991a;
        W5 w54 = ((VA) c6382aB.f46442a.get(i12)).f44991a;
        c6382aB.f46451j.g(w53);
        c6382aB.f46451j.g(w54);
        c6382aB.a(w54, c6382aB.f46462u.c(i12));
        c6382aB.a(w53, c6382aB.f46462u.c(a10));
        c6382aB.a((AbstractC9408sL) eb2);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, this.f52293d).a(c4798y, o82, this.f52293d);
    }
}
