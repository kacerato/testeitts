package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class Z8 extends Y8 {
    public Z8(YV yv) {
        super(yv);
    }

    @Override
    public final int B() {
        switch (this.f45936c) {
            case f45995b:
                return 83;
            case f45996c:
                return 84;
            case f45997d:
                return 85;
            case f45998e:
                return 86;
            case f45999f:
                return 79;
            case f46000g:
                return 81;
            case f46001h:
                return 80;
            case f46002i:
                return 82;
            default:
                throw new C5417Jv0("Unexpected type " + ((Object) this.f45936c));
        }
    }

    @Override
    public final Z8 a() {
        return this;
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
        C8774ob a10 = c9775ub.a();
        C8774ob a11 = c9775ub.a();
        c6382aB.b(this.f45936c, a10.f51280a, c9775ub.a().f51280a, a11.f51280a);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        C4724u1 b10 = c4798y.b();
        YV yv = this.f45936c;
        h92.getClass();
        C4724u1 b11 = c4798y.b();
        return h92.a(c4798y, o82, InterfaceC8008jy.a(yv, b11).a(b11)).a(c4798y, o82, b10.f37884J1).a(c4798y, o82, a(b10));
    }
}
