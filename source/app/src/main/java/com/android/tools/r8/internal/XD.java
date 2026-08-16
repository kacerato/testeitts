package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;
import java.util.function.Supplier;

public final class XD implements r {

    public static final boolean f45637c = true;

    public final Object f45638a;

    public final C4554l1 f45639b;

    public XD(Q5 q52, C4554l1 c4554l1) {
        this.f45638a = q52;
        this.f45639b = c4554l1;
    }

    @Override
    public final XD F() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.tools.r8.internal.Q5, java.lang.Object] */
    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, InterfaceC5825Qx interfaceC5825Qx, AbstractC10458yg abstractC10458yg, com.android.tools.r8.graph.M2 m22) {
        AbstractC5361Iw0 a10 = interfaceC5825Qx.a((Q5) this.f45638a, new Supplier() {
            @Override
            public final Object get() {
                return XD.this.h();
            }
        });
        if (a10.i()) {
            return AbstractC5361Iw0.a(this.f45639b.getType());
        }
        if (!(a10 instanceof C8288lg)) {
            return a(interfaceC5825Qx);
        }
        if (a10.b().f50031g.d().e()) {
            return AbstractC5361Iw0.a(this.f45639b.getType());
        }
        F1 a11 = a10.a((C4798y) null);
        if (!a11.X()) {
            return a(interfaceC5825Qx);
        }
        F1 a12 = a11.U().a(this.f45639b);
        if (a12.isUnknown()) {
            return a(interfaceC5825Qx);
        }
        return AbstractC10458yg.a(this.f45639b.getType(), a12);
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final int getKind() {
        return 5;
    }

    public final AbstractC5361Iw0 h() {
        return AbstractC5361Iw0.a(this.f45639b.getType());
    }

    public final String toString() {
        return "Read(" + this.f45638a + ", " + this.f45639b.j0() + ")";
    }

    @Override
    public final boolean v() {
        return true;
    }

    @Override
    public final AbstractC6333Zs0 a(Function function) {
        AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) function.apply(this.f45638a);
        return abstractC6333Zs0.d() ? (AbstractC6333Zs0) function.apply(new C5765Pw(this.f45639b)) : abstractC6333Zs0;
    }

    public final AbstractC5361Iw0 a(InterfaceC5825Qx interfaceC5825Qx) {
        AbstractC5361Iw0 a10 = interfaceC5825Qx.a(new C5765Pw(this.f45639b), (Supplier) null);
        if (!f45637c && a10.j() && a10.c().t()) {
            throw new AssertionError();
        }
        return a10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.android.tools.r8.internal.ZC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.android.tools.r8.internal.ZC] */
    @Override
    public final int a(ZC zc2, C6555bD c6555bD) {
        XD F10 = zc2.F();
        int b10 = this.f45638a.b(F10.f45638a, c6555bD);
        return b10 == 0 ? this.f45639b.compareTo(F10.f45639b) : b10;
    }
}
