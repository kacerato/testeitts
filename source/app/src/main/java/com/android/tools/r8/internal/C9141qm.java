package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;

public final class C9141qm implements InterfaceC5599Na {

    public static final boolean f51883e = true;

    public final C4798y f51884b;

    public final C9808um f51885c;

    public final Map f51886d;

    public C9141qm(C4798y c4798y) {
        this.f51884b = c4798y;
        this.f51885c = new C9808um(c4798y);
        this.f51886d = X2.a(c4798y).f53766c.h();
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Desugared library retargeter post processor");
        try {
            if (!f51883e && this.f51884b.E().x().f45396a.f53764a) {
                throw new AssertionError();
            }
            a(collection, abstractC5947Ta);
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(Collection collection, final AbstractC5947Ta abstractC5947Ta) {
        if (!f51883e && this.f51884b.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f51886d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C9141qm.a(Map.this, (com.android.tools.r8.graph.A2) obj, (C6830cu) obj2);
            }
        });
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            com.android.tools.r8.graph.M2 m22 = h22.f36247g;
            if (m22 == null) {
                if (!f51883e && h22.f36245e != this.f51884b.b().f38068i2) {
                    throw new AssertionError((Object) h22.f36245e.j0());
                }
            } else {
                final com.android.tools.r8.graph.E0 g10 = this.f51884b.g(m22);
                if (g10 != null && g10.f0() && g10.f36245e != this.f51884b.b().f38068i2) {
                    identityHashMap.forEach(new BiConsumer() {
                        @Override
                        public final void accept(Object obj, Object obj2) {
                            C9141qm.this.a(g10, abstractC5947Ta, h22, (com.android.tools.r8.graph.M2) obj, (List) obj2);
                        }
                    });
                }
            }
        }
    }

    public static void a(Map map, com.android.tools.r8.graph.A2 a22, C6830cu c6830cu) {
        map.putIfAbsent(a22.s0(), new ArrayList(1));
        ((List) map.get(a22.s0())).add(a22);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, InterfaceC9641tm interfaceC9641tm, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22, List list) {
        String str;
        C4725u2 G10 = e02.G();
        Map map = this.f51886d;
        while (G10.f36245e != this.f51884b.b().f38068i2) {
            if (G10.f36245e == m22) {
                if (this.f51884b.a(h22)) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) it.next();
                    C6830cu c6830cu = (C6830cu) this.f51886d.get(a22);
                    com.android.tools.r8.graph.E0 a10 = this.f51885c.a(c6830cu, interfaceC9641tm);
                    if (!h22.f36248h.a(a10.f36245e) && !this.f51884b.b().f38117o3.contains(h22.getType())) {
                        h22.a(Collections.singletonList(new H3.c(a10.f36245e)), this.f51884b.b());
                        interfaceC9641tm.b(h22, a10);
                        com.android.tools.r8.graph.A2 b10 = this.f51885c.b(a10.f36245e, c6830cu.f47197a);
                        if (!C9808um.f52945b && a10.b(b10) == null) {
                            throw new AssertionError();
                        }
                        if (h22.c(a22) == null) {
                            com.android.tools.r8.graph.A2 a11 = this.f51885c.a(c6830cu);
                            boolean z10 = f51883e;
                            if (!z10 && (a11 == null || a11 == b10)) {
                                throw new AssertionError();
                            }
                            com.android.tools.r8.graph.H0 p10 = this.f51884b.g().b(b10, true).p();
                            if (!z10 && p10 == null) {
                                throw new AssertionError();
                            }
                            C4516j1 a12 = C4516j1.a(p10, (com.android.tools.r8.graph.E0) h22, a11, this.f51884b.b(), true);
                            a12.a(AbstractC9530t40.f52517a);
                            h22.f36252l.f36638b.c(a12);
                            interfaceC9641tm.a(new com.android.tools.r8.graph.H5(h22, a12), c6830cu);
                        } else {
                            continue;
                        }
                    }
                }
                return;
            }
            com.android.tools.r8.graph.E0 g10 = this.f51884b.g(G10.f36247g);
            if (g10 != null && !(g10 instanceof com.android.tools.r8.graph.I0)) {
                if (g10.e0()) {
                    return;
                } else {
                    G10 = g10.G();
                }
            } else {
                Set o10 = map.o();
                com.android.tools.r8.graph.E0 g11 = this.f51884b.g(G10.f36247g);
                if (g11 == null) {
                    str = "missing";
                } else if (g11 instanceof com.android.tools.r8.graph.I0) {
                    str = "a classpath class";
                } else {
                    if (!f51883e) {
                        throw new AssertionError();
                    }
                    str = "INVALID";
                }
                this.f51884b.E().a(g11 == null ? G10.f36244d : g11.f36244d, G10.f36245e, G10.f36247g, str, o10);
                return;
            }
        }
    }
}
