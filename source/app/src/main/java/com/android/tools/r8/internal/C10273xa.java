package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public class C10273xa extends W9 implements InterfaceC5081Eb {

    public static final boolean f53774d = true;

    public final com.android.tools.r8.graph.M2 f53775c;

    public C10273xa(com.android.tools.r8.graph.M2 m22) {
        if (!f53774d && !m22.E0()) {
            throw new AssertionError();
        }
        this.f53775c = m22;
    }

    @Override
    public final int B() {
        return this.f53775c.O0() ? 188 : 189;
    }

    @Override
    public final boolean U() {
        return true;
    }

    public final int V() {
        byte b10 = this.f53775c.f36592f.f36562f[1];
        if (b10 == 70) {
            return 6;
        }
        if (b10 == 83) {
            return 9;
        }
        if (b10 == 90) {
            return 4;
        }
        if (b10 == 73) {
            return 10;
        }
        if (b10 == 74) {
            return 11;
        }
        switch (b10) {
            case 66:
                return 8;
            case 67:
                return 5;
            case 68:
                return 7;
            default:
                throw new C5417Jv0("Unexpected type for new-array: " + ((Object) this.f53775c));
        }
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C10273xa(m22);
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f53775c;
    }

    @Override
    public final InterfaceC5081Eb x() {
        return this;
    }

    @Override
    public final int y() {
        return 2;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f53775c;
        com.android.tools.r8.graph.M2 m23 = ((C10273xa) w92).f53775c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f53775c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        if (this.f53775c.O0()) {
            ex.b(188, V());
            return;
        }
        if (!f53774d && this.f53775c.O0()) {
            throw new AssertionError();
        }
        StringBuilder sb2 = new StringBuilder();
        int y02 = this.f53775c.y0();
        for (int i10 = 1; i10 < y02; i10++) {
            sb2.append("[");
        }
        sb2.append(abstractC10992r0.c(abstractC5308Hz.c(abstractC5308Hz2, this.f53775c.a(c4724u1))).j0());
        ex.c(189, C4932Bl.a(sb2.toString()));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        if (this.f53775c.O0()) {
            return;
        }
        abstractC4446f6.f(this.f53775c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        C8774ob a10 = c9775ub.a();
        int i10 = c9775ub.a(new C9108qb(this.f53775c)).f51280a;
        int i11 = a10.f51280a;
        com.android.tools.r8.graph.M2 m22 = this.f53775c;
        if (!C6382aB.f46438D) {
            c6382aB.getClass();
            if (!m22.E0()) {
                throw new AssertionError();
            }
        }
        c6382aB.a(c6382aB.f46462u.g(), new C8769oZ(c6382aB.a(i10, 2, AbstractC8999pu0.a(m22, C8854p10.b(), (C4798y<?>) c6382aB.f46457p)), c6382aB.b(i11, EnumC5592Mw0.f42462c), m22));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, c4798y.b().f37884J1).a(o82, this.f53775c);
    }
}
