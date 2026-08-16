package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class C9939va extends W9 {

    public final T10 f53147c;

    public C9939va(T10 t10) {
        this.f53147c = t10;
    }

    @Override
    public final int B() {
        switch (AbstractC9772ua.f52878a[this.f53147c.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return 116;
            case 5:
                return 117;
            case 6:
                return 118;
            case 7:
                return 119;
            default:
                throw new C5417Jv0("Invalid type for CfNeg " + ((Object) this.f53147c));
        }
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

    public static C9939va a(int i10) {
        switch (i10) {
            case 116:
                return new C9939va(T10.f44369e);
            case 117:
                return new C9939va(T10.f44370f);
            case 118:
                return new C9939va(T10.f44371g);
            case 119:
                return new C9939va(T10.f44372h);
            default:
                throw new C5417Jv0("Invalid opcode for CfNeg " + i10);
        }
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        T10 t10 = this.f53147c;
        c6382aB.a(t10, c9775ub.a(new C8941pb(EnumC5477Kw0.a(t10))).f51280a, i10);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        T10 t10 = this.f53147c;
        h92.getClass();
        H9 a10 = h92.a(c4798y, o82, t10.a(c4798y.b()));
        T10 t102 = this.f53147c;
        a10.getClass();
        return a10.a(o82, t102.a(c4798y.b()));
    }
}
