package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import java.util.function.BiPredicate;

public final class C9870v60 extends AbstractC10561zE {

    public static final boolean f53014k = true;

    public C9870v60(C10340xw0 c10340xw0) {
        super((C10340xw0) null, c10340xw0);
        if (!f53014k && !c10340xw0.Q()) {
            throw new AssertionError();
        }
    }

    @Override
    public final C9870v60 C0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final void b(C10340xw0 c10340xw0) {
        if (c10340xw0.F()) {
            super.b(c10340xw0);
        } else {
            this.f54321f.add(c10340xw0);
        }
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0();
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 54;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, final InterfaceC5381Je0 interfaceC5381Je0) {
        boolean z10 = f53014k;
        if (!z10 && !(abstractC10561zE instanceof C9870v60)) {
            throw new AssertionError();
        }
        if (!a(abstractC10561zE.C0(), new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean a10;
                a10 = ((C9389sD) obj).a((C9389sD) obj2, InterfaceC5381Je0.this);
                return a10;
            }
        })) {
            return false;
        }
        if (!z10 && !b(abstractC10561zE)) {
            throw new AssertionError();
        }
        if (!o() && !interfaceC5381Je0.e().f50690i1) {
            return true;
        }
        B60 b60 = this.f54324i;
        B60 b602 = abstractC10561zE.f54324i;
        b60.getClass();
        return InterfaceC7166ev.a(b60, b602);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C9870v60) {
            return a(abstractC10561zE.C0(), new BiPredicate() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return ((C9389sD) obj).b((C9389sD) obj2);
                }
            });
        }
        return false;
    }

    public final boolean a(C9870v60 c9870v60, BiPredicate biPredicate) {
        if (W0().d(new C9226rE0())) {
            C9389sD W10 = W0().r().W();
            if (c9870v60.W0().d(new C9226rE0())) {
                return biPredicate.test(W10, c9870v60.W0().r().W());
            }
            return false;
        }
        return !c9870v60.W0().d(new C9226rE0());
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0("This classfile-specific IR should not be used in LIR.");
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("This classfile-specific IR should not be inserted in the Dex backend.");
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C8106kb(((C10340xw0) this.f54321f.get(0)).Y().b() ? C8106kb.a.Pop2 : C8106kb.a.Pop), this);
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0("This IR must not be inserted before load and store insertion.");
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
