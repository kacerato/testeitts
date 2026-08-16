package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public final class C9044q9 extends W9 {

    public static final boolean f51724e = true;

    public final EnumC9283re f51725c;

    public final T10 f51726d;

    public C9044q9(EnumC9283re enumC9283re, T10 t10) {
        boolean z10 = f51724e;
        if (!z10 && enumC9283re == null) {
            throw new AssertionError();
        }
        if (!z10 && t10 == null) {
            throw new AssertionError();
        }
        if (!z10 && t10 != T10.f44370f && t10 != T10.f44371g && t10 != T10.f44372h) {
            throw new AssertionError();
        }
        if (!z10 && t10 == T10.f44370f && enumC9283re != EnumC9283re.f52079b) {
            throw new AssertionError();
        }
        if (!z10 && t10 != T10.f44370f && enumC9283re == EnumC9283re.f52079b) {
            throw new AssertionError();
        }
        this.f51725c = enumC9283re;
        this.f51726d = t10;
    }

    @Override
    public final int B() {
        int i10 = AbstractC8877p9.f51461a[this.f51726d.ordinal()];
        if (i10 == 1) {
            return 148;
        }
        if (i10 == 2) {
            return this.f51725c == EnumC9283re.f52081d ? 149 : 150;
        }
        if (i10 == 3) {
            return this.f51725c == EnumC9283re.f52081d ? 151 : 152;
        }
        throw new C5417Jv0("CfCmp has unknown type " + ((Object) this.f51726d));
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

    public static C9044q9 a(int i10) {
        switch (i10) {
            case 148:
                return new C9044q9(EnumC9283re.f52079b, T10.f44370f);
            case 149:
                return new C9044q9(EnumC9283re.f52081d, T10.f44371g);
            case 150:
                return new C9044q9(EnumC9283re.f52080c, T10.f44371g);
            case 151:
                return new C9044q9(EnumC9283re.f52081d, T10.f44372h);
            case 152:
                return new C9044q9(EnumC9283re.f52080c, T10.f44372h);
            default:
                throw new C5417Jv0("Wrong ASM opcode for CfCmp " + i10);
        }
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(B());
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        c6382aB.a(this.f51726d, this.f51725c, c9775ub.a(new C8941pb(EnumC5477Kw0.f41825c)).f51280a, c9775ub.a().f51280a, i10);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        T10 t10 = this.f51726d;
        h92.getClass();
        H9 a10 = h92.a(c4798y, o82, t10.a(c4798y.b()));
        T10 t102 = this.f51726d;
        a10.getClass();
        return a10.a(c4798y, o82, t102.a(c4798y.b())).a(o82, c4798y.b().f37884J1);
    }
}
