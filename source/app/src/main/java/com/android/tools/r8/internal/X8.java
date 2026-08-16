package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class X8 extends Y8 {

    public static final boolean f45626e = true;

    public X8(YV yv) {
        super(yv);
    }

    @Override
    public final int B() {
        switch (this.f45936c) {
            case f45995b:
                return 50;
            case f45996c:
                return 51;
            case f45997d:
                return 52;
            case f45998e:
                return 53;
            case f45999f:
                return 46;
            case f46000g:
                return 48;
            case f46001h:
                return 47;
            case f46002i:
                return 49;
            default:
                throw new C5417Jv0("Unexpected type " + ((Object) this.f45936c));
        }
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
        C8774ob a10;
        C8774ob a11 = c9775ub.a();
        C8774ob a12 = c9775ub.a();
        boolean z10 = f45626e;
        if (!z10 && !a12.f51281b.a()) {
            throw new AssertionError();
        }
        EnumC5477Kw0 a13 = EnumC5477Kw0.a(this.f45936c);
        com.android.tools.r8.graph.M2 m22 = a12.f51282c;
        if (m22 != null) {
            a10 = c9775ub.a(new C9108qb(m22.a(1, c6382aB.f46457p.b())));
            if (!z10 && c9775ub.f52885a.c().f51281b != a13) {
                throw new AssertionError();
            }
        } else {
            a10 = c9775ub.a(new C8941pb(a13));
        }
        c6382aB.a(this.f45936c, a10.f51280a, a12.f51280a, a11.f51280a);
    }

    @Override
    public final H9 a(H9 h92, final C4798y c4798y, final O8 o82) {
        final C4724u1 b10 = c4798y.b();
        return h92.a(c4798y, o82, b10.f37884J1).a(c4798y, a(b10), o82, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return X8.this.a(o82, c4798y, b10, (H9) obj, (S60) obj2);
            }
        });
    }

    public final H9 a(O8 o82, C4798y c4798y, C4724u1 c4724u1, H9 h92, S60 s60) {
        if (s60.d()) {
            YV yv = this.f45936c;
            if (yv == YV.f45995b) {
                return h92.a(o82, C8353m10.f50176c);
            }
            h92.getClass();
            return h92.a(o82, InterfaceC8008jy.a(yv, c4798y.b()));
        }
        if (s60.B()) {
            return h92.a(o82, s60.p().f39161c.a().F());
        }
        if (f45626e || s60.m()) {
            return h92.a(o82, s60.b().f39470c.a(1, c4724u1));
        }
        throw new AssertionError();
    }
}
