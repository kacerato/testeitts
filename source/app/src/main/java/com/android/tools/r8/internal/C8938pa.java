package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;

public class C8938pa extends W9 {

    public static final boolean f51553e = true;

    public final int f51554c;

    public final EnumC5477Kw0 f51555d;

    public C8938pa(EnumC5477Kw0 enumC5477Kw0, int i10) {
        this.f51554c = i10;
        this.f51555d = enumC5477Kw0;
    }

    @Override
    public final boolean A() {
        return false;
    }

    @Override
    public final int B() {
        return V();
    }

    public final int V() {
        int i10 = AbstractC8771oa.f51277a[this.f51555d.ordinal()];
        if (i10 == 1) {
            return 25;
        }
        if (i10 == 2) {
            return 21;
        }
        if (i10 == 3) {
            return 23;
        }
        if (i10 == 4) {
            return 22;
        }
        if (i10 == 5) {
            return 24;
        }
        throw new C5417Jv0("Unexpected type " + ((Object) this.f51555d));
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this.f51554c, w92.n().f51554c);
    }

    @Override
    public final C8938pa n() {
        return this;
    }

    @Override
    public final int y() {
        int i10 = this.f51554c;
        if (i10 <= 3) {
            return 1;
        }
        return i10 < 256 ? 2 : 4;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f51554c);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.d(V(), this.f51554c);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, final O8 o82) {
        return h92.a(c4798y, o82, this.f51554c, this.f51555d, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C8938pa.this.a(o82, (H9) obj, (InterfaceC8008jy) obj2);
            }
        });
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        C8774ob a10 = c9775ub.f52885a.a(this.f51554c);
        C8774ob a11 = c9775ub.a(a10.f51283d);
        EnumC5477Kw0 enumC5477Kw0 = a10.f51281b;
        int i10 = a11.f51280a;
        int i11 = a10.f51280a;
        c6382aB.getClass();
        c6382aB.a(EnumC5592Mw0.a(enumC5477Kw0), i10, i11);
    }

    public final H9 a(O8 o82, H9 h92, InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.D()) {
            return h92.a(o82, interfaceC8008jy.k());
        }
        if (!f51553e && !interfaceC8008jy.f() && !interfaceC8008jy.c()) {
            throw new AssertionError();
        }
        StringBuilder sb2 = new StringBuilder("Unexpected attempt to read local of type top at index ");
        sb2.append(this.f51554c);
        if (this.f51555d.b()) {
            sb2.append(" and ");
            sb2.append(this.f51554c + 1);
        }
        return new C7667hv(sb2.toString());
    }
}
