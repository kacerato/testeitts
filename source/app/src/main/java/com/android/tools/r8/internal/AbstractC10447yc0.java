package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;

public abstract class AbstractC10447yc0 {
    public static GX a() {
        return new GX("Record desugaring");
    }

    public static void a(InterfaceC8110kc0 interfaceC8110kc0, Collection collection, InterfaceC8277lc0 interfaceC8277lc0, com.android.tools.r8.graph.H2 h22) {
        if (interfaceC8110kc0 != null) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                interfaceC8110kc0.a(h22, ((com.android.tools.r8.graph.D5) it.next()).asClass());
            }
        }
        if (interfaceC8277lc0 != null) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                interfaceC8277lc0.b(h22, ((com.android.tools.r8.graph.D5) it2.next()).b());
            }
        }
    }

    public static void a(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.E0 c10 = c4798y.f().c(b10.f38084k2);
        if (c10 == null || !c10.e0()) {
            return;
        }
        c4798y.E().f50691j.a("D8/R8 is compiling a mix of desugared and non desugared input using java.lang.Record, but the application reader did not import correctly " + ((Object) b10.f38084k2));
    }

    public static void a(C4798y c4798y, com.android.tools.r8.synthesis.W w10) {
        com.android.tools.r8.graph.L4 b10 = com.android.tools.r8.graph.L4.b(4100, true);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1 a10 = new C4516j1.a(true).a(c4798y.b().f37873H4.f37502a).a(b10).a(new B8(c4798y, c4798y.b().f38084k2).b()).b().a();
        w10.f58286e = true;
        w10.f58287f = false;
        ((com.android.tools.r8.synthesis.W) w10.c()).a((AbstractCollection) new C5920Sm0(a10));
    }

    public static void a(final C4798y c4798y, final AbstractCollection abstractCollection, final InterfaceC8444mc0 interfaceC8444mc0, final AbstractC8710o9 abstractC8710o9, final AbstractC7103ea abstractC7103ea) {
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return AbstractC10447yc0.a();
            }
        };
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58174a;
                return bVar;
            }
        };
        com.android.tools.r8.graph.M2 m22 = c4798y.b().f38076j2;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10447yc0.a(C4798y.this, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(interfaceC8444mc0);
        g10.a(supplier, i10, m22, abstractCollection, c4798y, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC8444mc0.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10447yc0.a(InterfaceC8110kc0.this, abstractCollection, abstractC7103ea, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }
}
