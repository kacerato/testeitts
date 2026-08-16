package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class AbstractC7696i40 {

    public static final boolean f48775a = true;

    public abstract AbstractC7696i40 a(com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0);

    public abstract AbstractC7696i40 a(AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0);

    public abstract boolean a();

    public abstract boolean a(com.android.tools.r8.graph.E0 e02);

    public final boolean a(final C4798y c4798y, final C10340xw0 c10340xw0) {
        return a(c4798y, new Supplier() {
            @Override
            public final Object get() {
                AbstractC10330xt a10;
                a10 = C10340xw0.this.a(c4798y);
                return a10;
            }
        }, c10340xw0.u());
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.tools.r8.internal.Ic0, com.android.tools.r8.internal.u1] */
    public final boolean a(final C4798y c4798y, Supplier supplier, AbstractC8999pu0 abstractC8999pu0) {
        boolean z10 = true;
        if (!abstractC8999pu0.s()) {
            return true;
        }
        C6949de b10 = abstractC8999pu0.b();
        if (b10.E() != c4798y.b().f38068i2 || b10.f46573b.e()) {
            return true;
        }
        C10070wI F10 = b10.F();
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC7696i40.this.a(c4798y, (com.android.tools.r8.graph.M2) obj);
            }
        };
        A30 it = F10.f53468a.g().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            InterfaceC5259Hc0 interfaceC5259Hc0 = (InterfaceC5259Hc0) it.next();
            if (interfaceC5259Hc0.getBooleanValue() && !predicate.test((com.android.tools.r8.graph.M2) interfaceC5259Hc0.getKey())) {
                AbstractC10330xt abstractC10330xt = (AbstractC10330xt) supplier.get();
                if (abstractC10330xt.k()) {
                    return true;
                }
                z10 = false;
                if (abstractC10330xt.l()) {
                    return false;
                }
                AbstractC8999pu0 a10 = abstractC10330xt.a(abstractC8999pu0);
                if (a10.r()) {
                    return a10.b(abstractC8999pu0, c4798y);
                }
                if (!a10.s()) {
                    if (f48775a) {
                        return false;
                    }
                    throw new AssertionError();
                }
                C6949de b11 = a10.b();
                if (b11.E() != c4798y.b().f38068i2) {
                    return b11.b(abstractC8999pu0, c4798y);
                }
            }
        }
        return z10;
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m22);
        return g10 != null && a(g10);
    }
}
