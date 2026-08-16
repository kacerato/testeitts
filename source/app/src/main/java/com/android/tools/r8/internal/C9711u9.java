package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.List;
import java.util.ListIterator;

public final class C9711u9 extends W9 implements InterfaceC5081Eb {

    public static final boolean f52797d = true;

    public final C4866Ah f52798c;

    public C9711u9(C4866Ah c4866Ah) {
        this.f52798c = c4866Ah;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 206;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final boolean U() {
        return true;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return this.f52798c.a(((C9711u9) w92).f52798c, abstractC8953pf);
    }

    @Override
    public final C9711u9 d() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f52798c.f38688d;
    }

    @Override
    public final InterfaceC5081Eb x() {
        return this;
    }

    @Override
    public final int y() {
        return 3;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        this.f52798c.a(abstractC9213rA);
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        throw new C6501av0();
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        com.android.tools.r8.graph.C2 c22 = this.f52798c.f38689e;
        rr.getClass();
        com.android.tools.r8.graph.C2 a10 = rr.a(c22, 2, h52.getReference());
        List a11 = rr.a(this.f52798c.f38690f, 2, h52);
        Object[] objArr = new Object[a11.size()];
        for (int i10 = 0; i10 < a11.size(); i10++) {
            objArr[i10] = C7604ha.a((com.android.tools.r8.graph.R2) a11.get(i10), abstractC10992r0, c4724u1);
        }
        ex.a(new C10127wh(this.f52798c.f38687c.toString(), abstractC10992r0.a(c4724u1, abstractC5308Hz.c(abstractC5308Hz2, this.f52798c.f38688d)).V0(), a10.a(abstractC10992r0), objArr));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.f(this.f52798c.f38688d);
        abstractC4446f6.a(2, this.f52798c.f38689e);
        if (!f52797d && !this.f52798c.f38690f.isEmpty()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        throw new C5325If("Unsupported dynamic constant (not desugaring)");
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f38180w2);
    }
}
