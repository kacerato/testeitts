package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C7358g3 extends AbstractC5276Hj {

    public static final boolean f48172j = true;

    public final C8534n6 f48173f;

    public final C7045eA f48174g;

    public final C7045eA f48175h;

    public final IdentityHashMap f48176i;

    public C7358g3(C4798y c4798y, AbstractC5308Hz abstractC5308Hz) {
        super(c4798y);
        this.f48173f = C8534n6.a();
        this.f48174g = new C7045eA(16);
        this.f48175h = new C7045eA(16);
        this.f48176i = new IdentityHashMap();
        for (com.android.tools.r8.graph.H2 h22 : ((C4514j) c4798y.f()).d()) {
            com.android.tools.r8.graph.M2 type = h22.getType();
            abstractC5308Hz.getClass();
            if (abstractC5308Hz.c(AbstractC5308Hz.g(), type) == h22.getType()) {
                a(h22, abstractC5308Hz);
                Iterator<C4460g1> it = h22.I0().iterator();
                while (it.hasNext()) {
                    C4554l1 reference = it.next().getReference();
                    C4554l1 a10 = abstractC5308Hz.a(AbstractC5308Hz.g(), reference);
                    if (a10 != reference) {
                        C4554l1 c4554l1 = (C4554l1) this.f48174g.a(reference, a10, true);
                        if (!f48172j && c4554l1 != null) {
                            throw new AssertionError();
                        }
                    }
                }
                Iterator<C4516j1> it2 = h22.z1().iterator();
                while (it2.hasNext()) {
                    com.android.tools.r8.graph.A2 reference2 = it2.next().getReference();
                    com.android.tools.r8.graph.A2 a11 = abstractC5308Hz.a(reference2);
                    com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) ((C6379aA) this.f48175h.f()).get(a11);
                    if (a22 == null) {
                        this.f48175h.a(reference2, a11, false);
                    } else if (abstractC5308Hz.d(AbstractC5308Hz.g(), a11) == a22) {
                        this.f48176i.put(reference2, a11);
                    } else {
                        this.f48175h.a(reference2, a11, true);
                        this.f48176i.put(a22, a11);
                    }
                }
            }
        }
        TU.a(this.f48175h);
        TU.a(this.f48176i);
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        return true;
    }

    @Override
    public final Iterable b(com.android.tools.r8.graph.M2 m22) {
        Set d10 = this.f48173f.d(m22);
        if (!d10.isEmpty()) {
            return d10;
        }
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(m22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C4554l1 c(C4554l1 c4554l1) {
        return (C4554l1) this.f48174g.getOrDefault(c4554l1, c4554l1);
    }

    @Override
    public final com.android.tools.r8.graph.M2 d(com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.M2) this.f48173f.getOrDefault(m22, m22);
    }

    @Override
    public final com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        return AbstractC5308Hz.g().f(abstractC5308Hz, a22);
    }

    public final void a(com.android.tools.r8.graph.H2 h22, AbstractC5308Hz abstractC5308Hz) {
        final com.android.tools.r8.graph.M2 type = h22.getType();
        ArrayList a10 = CT.a(abstractC5308Hz.b(type));
        if (a10.size() == 1 && a10.get(0) == type) {
            return;
        }
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7358g3.this.a(type, (com.android.tools.r8.graph.M2) obj);
            }
        });
        C8534n6 c8534n6 = this.f48173f;
        c8534n6.f50507e.put(type, abstractC5308Hz.a(type));
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) this.f48175h.f().getOrDefault(a22, a22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        if (this.f48176i.containsKey(a22)) {
            return (com.android.tools.r8.graph.A2) this.f48176i.get(a22);
        }
        return (com.android.tools.r8.graph.A2) this.f48175h.getOrDefault(a22, a22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22) {
        Object c10 = this.f48173f.c(m22);
        if (c10 != 0) {
            m22 = c10;
        }
        return m22;
    }

    @Override
    public final C4554l1 b(C4554l1 c4554l1) {
        return (C4554l1) this.f48174g.f().getOrDefault(c4554l1, c4554l1);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (!f48172j && this.f48173f.f49890b.containsKey(m23)) {
            throw new AssertionError();
        }
        this.f48173f.a(m23, m22);
    }
}
