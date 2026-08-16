package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Map;
import java.util.function.Function;

public abstract class AbstractC8455mg extends AbstractC10267xX {

    public static final boolean f50375a = true;

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final InterfaceC10100wX a(C4798y c4798y, com.android.tools.r8.graph.F2 f22, InterfaceC10100wX interfaceC10100wX, AbstractC4939Bo0 abstractC4939Bo0) {
        InterfaceC10100wX interfaceC10100wX2;
        if (interfaceC10100wX.g()) {
            return this;
        }
        if (interfaceC10100wX.isUnknown()) {
            return interfaceC10100wX;
        }
        AbstractC8455mg d10 = interfaceC10100wX.d();
        if (this instanceof C8622ng) {
            d10.getClass();
            if (d10 instanceof C8622ng) {
                return ((C8622ng) this).a(c4798y, f22, d10.b(), abstractC4939Bo0);
            }
        }
        if (this instanceof C9456sg) {
            d10.getClass();
            if (d10 instanceof C9456sg) {
                C9456sg c9456sg = (C9456sg) this;
                C9456sg j10 = d10.j();
                boolean z10 = C9456sg.f52431c;
                if (!z10 && c9456sg.f52432b.isEmpty()) {
                    throw new AssertionError();
                }
                if (!z10 && c9456sg.a(AbstractC10330xt.m()).isUnknown()) {
                    throw new AssertionError();
                }
                if (!z10 && j10.f52432b.isEmpty()) {
                    throw new AssertionError();
                }
                if (!z10) {
                    j10.getClass();
                    if (j10.a(AbstractC10330xt.m()).isUnknown()) {
                        throw new AssertionError();
                    }
                }
                for (Map.Entry entry : j10.f52432b.entrySet()) {
                    C10664zt c10664zt = (C10664zt) entry.getKey();
                    InterfaceC8956pg interfaceC8956pg = (InterfaceC8956pg) entry.getValue();
                    boolean z11 = C9456sg.f52431c;
                    if (!z11 && c9456sg.f52432b.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (!z11 && c9456sg.a(AbstractC10330xt.m()).isUnknown()) {
                        throw new AssertionError();
                    }
                    AbstractC10267xX abstractC10267xX = (AbstractC10267xX) interfaceC8956pg;
                    abstractC10267xX.getClass();
                    if (abstractC10267xX instanceof C9669tv0) {
                        if (c10664zt.l()) {
                            interfaceC10100wX2 = C9669tv0.f52729a;
                        } else {
                            c9456sg.f52432b.put(c10664zt, interfaceC8956pg);
                            interfaceC10100wX2 = c9456sg;
                        }
                    } else {
                        if (!z11 && !(abstractC10267xX instanceof C8622ng)) {
                            throw new AssertionError();
                        }
                        InterfaceC10100wX a10 = C9456sg.a(c4798y, f22, (InterfaceC8956pg) c9456sg.f52432b.get(c10664zt), interfaceC8956pg, abstractC4939Bo0);
                        if (c10664zt.l()) {
                            AbstractC10267xX abstractC10267xX2 = (AbstractC10267xX) a10;
                            abstractC10267xX2.getClass();
                            if (abstractC10267xX2 instanceof C9669tv0) {
                                interfaceC10100wX2 = C9669tv0.f52729a;
                            }
                        }
                        c9456sg.f52432b.put(c10664zt, a10);
                        interfaceC10100wX2 = c9456sg;
                    }
                    if (interfaceC10100wX2 instanceof C9669tv0) {
                        return interfaceC10100wX2;
                    }
                    if (!z11 && interfaceC10100wX2 != c9456sg) {
                        throw new AssertionError();
                    }
                }
                if (C9456sg.f52431c || !c9456sg.a(AbstractC10330xt.m()).isUnknown()) {
                    return c9456sg;
                }
                throw new AssertionError();
            }
        }
        if (f50375a) {
            return C9669tv0.f52729a;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC8455mg d() {
        return this;
    }

    @Override
    public final boolean e() {
        return true;
    }

    @Override
    public final InterfaceC10100wX a(C4798y c4798y, com.android.tools.r8.graph.F2 f22, Function function) {
        return a(c4798y, f22, (InterfaceC10100wX) function.apply(this), AbstractC4939Bo0.f39021b);
    }
}
