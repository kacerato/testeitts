package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class C9271ra extends W9 {

    public static final boolean f52065e = true;

    public final EnumC9105qa f52066c;

    public final T10 f52067d;

    public C9271ra(EnumC9105qa enumC9105qa, T10 t10) {
        boolean z10 = f52065e;
        if (!z10 && enumC9105qa == null) {
            throw new AssertionError();
        }
        if (!z10 && t10 == null) {
            throw new AssertionError();
        }
        if (!z10 && (t10 == T10.f44371g || t10 == T10.f44372h)) {
            throw new AssertionError();
        }
        this.f52066c = enumC9105qa;
        this.f52067d = t10;
    }

    @Override
    public final int B() {
        return a(this.f52066c, this.f52067d);
    }

    public T10 V() {
        return this.f52067d;
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

    public static C9271ra a(int i10) {
        switch (i10) {
            case 120:
                return new C9271ra(EnumC9105qa.f51807b, T10.f44369e);
            case 121:
                return new C9271ra(EnumC9105qa.f51807b, T10.f44370f);
            case 122:
                return new C9271ra(EnumC9105qa.f51808c, T10.f44369e);
            case 123:
                return new C9271ra(EnumC9105qa.f51808c, T10.f44370f);
            case 124:
                return new C9271ra(EnumC9105qa.f51809d, T10.f44369e);
            case 125:
                return new C9271ra(EnumC9105qa.f51809d, T10.f44370f);
            case 126:
                return new C9271ra(EnumC9105qa.f51810e, T10.f44369e);
            case 127:
                return new C9271ra(EnumC9105qa.f51810e, T10.f44370f);
            case 128:
                return new C9271ra(EnumC9105qa.f51811f, T10.f44369e);
            case 129:
                return new C9271ra(EnumC9105qa.f51811f, T10.f44370f);
            case 130:
                return new C9271ra(EnumC9105qa.f51812g, T10.f44369e);
            case 131:
                return new C9271ra(EnumC9105qa.f51812g, T10.f44370f);
            default:
                throw new C5417Jv0("Wrong ASM opcode for CfLogicalBinop " + i10);
        }
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(a(this.f52066c, this.f52067d));
    }

    public static int a(EnumC9105qa enumC9105qa, T10 t10) {
        int ordinal = enumC9105qa.ordinal();
        if (ordinal == 0) {
            return t10.a() ? 121 : 120;
        }
        if (ordinal == 1) {
            return t10.a() ? 123 : 122;
        }
        if (ordinal == 2) {
            return t10.a() ? 125 : 124;
        }
        if (ordinal == 3) {
            return t10.a() ? 127 : 126;
        }
        if (ordinal == 4) {
            return t10.a() ? 129 : 128;
        }
        if (ordinal == 5) {
            return t10.a() ? 131 : 130;
        }
        throw new C5417Jv0("CfLogicalBinop has unknown opcode " + ((Object) enumC9105qa));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        int i11 = c9775ub.a().f51280a;
        int i12 = c9775ub.a(new C8941pb(EnumC5477Kw0.a(this.f52067d))).f51280a;
        int ordinal = this.f52066c.ordinal();
        if (ordinal == 0) {
            c6382aB.n(this.f52067d, i12, i11, i10);
            return;
        }
        if (ordinal == 1) {
            c6382aB.o(this.f52067d, i12, i11, i10);
            return;
        }
        if (ordinal == 2) {
            c6382aB.q(this.f52067d, i12, i11, i10);
            return;
        }
        if (ordinal == 3) {
            c6382aB.c(this.f52067d, i12, i11, i10);
            return;
        }
        if (ordinal == 4) {
            c6382aB.i(this.f52067d, i12, i11, i10);
            return;
        }
        if (ordinal == 5) {
            c6382aB.r(this.f52067d, i12, i11, i10);
            return;
        }
        throw new C5417Jv0("CfLogicalBinop has unknown opcode " + ((Object) this.f52066c));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        T10 t10 = this.f52067d;
        int ordinal = this.f52066c.ordinal();
        T10 t102 = (ordinal == 3 || ordinal == 4 || ordinal == 5) ? t10 : T10.f44369e;
        h92.getClass();
        H9 a10 = h92.a(c4798y, o82, t102.a(c4798y.b()));
        a10.getClass();
        H9 a11 = a10.a(c4798y, o82, t10.a(c4798y.b()));
        a11.getClass();
        return a11.a(o82, t10.a(c4798y.b()));
    }
}
