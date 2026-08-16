package com.android.tools.r8.internal;

import com.android.tools.r8.graph.Z4;
import java.util.AbstractMap;
import java.util.IdentityHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Supplier;

public final class MV {

    public final AbstractMap f42309a;

    public MV(AbstractMap abstractMap) {
        this.f42309a = abstractMap;
    }

    public static MV a() {
        return new MV(new IdentityHashMap());
    }

    public static MV b() {
        return new MV(new ConcurrentHashMap());
    }

    public static NV b(Z4.c cVar) {
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        return new NV(cVar, new C7873j80());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.A2 a22, final Z4.c cVar, com.android.tools.r8.graph.H5 h52) {
        ((NV) this.f42309a.computeIfAbsent(a22, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return MV.a(Z4.c.this);
            }
        }))).f42615b.add((AbstractC8374m80) h52);
    }

    public final void a(final InterfaceC7328ft0 interfaceC7328ft0) {
        this.f42309a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC7328ft0.this.a((com.android.tools.r8.graph.A2) obj, r3.f42614a, ((NV) obj2).f42615b);
            }
        });
    }

    public final void a(MV mv) {
        mv.a(new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                MV.this.a((com.android.tools.r8.graph.A2) obj, (Z4.c) obj2, (AbstractC8374m80) obj3);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.A2 a22, final Z4.c cVar, AbstractC8374m80 abstractC8374m80) {
        ((NV) this.f42309a.computeIfAbsent(a22, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return MV.b(Z4.c.this);
            }
        }))).f42615b.f45165b.putAll(abstractC8374m80.f45165b);
    }

    public static NV a(Z4.c cVar) {
        return new NV(cVar, AbstractC8374m80.c());
    }
}
