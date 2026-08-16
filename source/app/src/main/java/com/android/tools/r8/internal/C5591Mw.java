package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.BiFunction;
import java.util.function.Supplier;

public final class C5591Mw {

    public static final boolean f42459b = true;

    public final C7040e80 f42460a;

    public C5591Mw(C7040e80 c7040e80) {
        this.f42460a = c7040e80;
    }

    public final void a(final C4798y c4798y, final com.android.tools.r8.graph.F5 f52, Supplier supplier, C8659ns0 c8659ns0) {
        a(f52, supplier, c8659ns0, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5591Mw.a(C4798y.this, f52, (AbstractC10458yg) obj, (AbstractC10458yg) obj2);
            }
        }, InterfaceC6522b2.f46683a);
    }

    public static Q00 a(C4798y c4798y, com.android.tools.r8.graph.F5 f52, AbstractC10458yg abstractC10458yg, AbstractC10458yg abstractC10458yg2) {
        return abstractC10458yg.a(c4798y, abstractC10458yg2, null, f52.getReference().getType(), AbstractC4939Bo0.f39020a, InterfaceC6522b2.f46683a);
    }

    public final Q00 a(com.android.tools.r8.graph.F5 f52, final Supplier supplier, final C8659ns0 c8659ns0, final BiFunction biFunction, final InterfaceC6522b2 interfaceC6522b2) {
        AbstractC5361Iw0 abstractC5361Iw0 = (AbstractC5361Iw0) this.f42460a.a((com.android.tools.r8.graph.G0) f52, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5591Mw.a(Supplier.this, interfaceC6522b2, c8659ns0, biFunction, (com.android.tools.r8.graph.F5) obj, (Q00) obj2);
            }
        });
        if (f42459b || abstractC5361Iw0.k()) {
            return abstractC5361Iw0.d();
        }
        throw new AssertionError();
    }

    public static Q00 a(Supplier supplier, InterfaceC6522b2 interfaceC6522b2, C8659ns0 c8659ns0, BiFunction biFunction, com.android.tools.r8.graph.F5 f52, Q00 q00) {
        if (q00 == null) {
            Q00 q002 = (Q00) supplier.get();
            q002.getClass();
            if (q002 instanceof C10671zv0) {
                interfaceC6522b2.a();
            }
            return q002;
        }
        if (q00 instanceof C10671zv0) {
            return q00;
        }
        Q00 q003 = (Q00) supplier.get();
        q003.getClass();
        if (q003 instanceof C10671zv0) {
            interfaceC6522b2.a();
            return q003;
        }
        c8659ns0.b("Join temporary field state");
        Q00 q004 = (Q00) biFunction.apply(q00.c(), q003.c());
        q004.getClass();
        if (q004 instanceof C10671zv0) {
            interfaceC6522b2.a();
        }
        c8659ns0.d();
        return q004;
    }

    public final AbstractC5361Iw0 a(com.android.tools.r8.graph.F5 f52) {
        Q00 q00 = (Q00) this.f42460a.f43368b.get(new C7333fv(C5573Mn.f42399a, f52));
        return q00 != null ? q00 : AbstractC5361Iw0.a(f52.getReference().getType());
    }
}
