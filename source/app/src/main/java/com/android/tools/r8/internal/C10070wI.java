package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

public class C10070wI {

    public static final C10070wI f53466b = new C10070wI(AbstractC5491Lc0.f42020a);

    public static final boolean f53467c = true;

    public final AbstractC9687u1 f53468a;

    public static class a {

        public final C6012Uc0 f53469a = new C6012Uc0();

        public a a(com.android.tools.r8.graph.M2 m22, final boolean z10) {
            this.f53469a.compute(m22, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    Boolean valueOf;
                    boolean z11 = z10;
                    valueOf = Boolean.valueOf((r2 == null || r2.booleanValue()) && r0);
                    return valueOf;
                }
            });
            return this;
        }

        public a a(com.android.tools.r8.graph.M2 m22) {
            return a(m22, true);
        }

        public C10070wI a() {
            if (this.f53469a.isEmpty()) {
                return C10070wI.f53466b;
            }
            return new C10070wI(this.f53469a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C10070wI(InterfaceC5317Ic0 interfaceC5317Ic0) {
        if (!f53467c && interfaceC5317Ic0 == 0) {
            throw new AssertionError();
        }
        this.f53468a = (AbstractC9687u1) interfaceC5317Ic0;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, C8570nJ c8570nJ) {
        c8570nJ.getClass();
        if (c8570nJ.a(C2.K) && m23.a(c8570nJ.m().f37850E2) && m22.a(c8570nJ.m().f37842D2)) {
            return false;
        }
        if (!c8570nJ.z().e(C2.V) || !m22.a(c8570nJ.m().f37834C2)) {
            return true;
        }
        final U6 u62 = new U6(true);
        C8364m5.a((Consumer<com.android.tools.r8.graph.M2>) new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10070wI.a(com.android.tools.r8.graph.M2.this, u62, (com.android.tools.r8.graph.M2) obj);
            }
        }, c8570nJ.z(), c8570nJ.m(), true);
        return u62.a();
    }

    public static C10070wI c(com.android.tools.r8.graph.M2 m22) {
        return new C10070wI(new C5433Kc0(m22));
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public final ArrayList b() {
        final ArrayList arrayList = new ArrayList(this.f53468a.size());
        this.f53468a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                List.this.add(new C8699o50((com.android.tools.r8.graph.M2) obj, (Boolean) obj2));
            }
        });
        return arrayList;
    }

    public int d() {
        return this.f53468a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C10070wI) {
            return this.f53468a.equals(((C10070wI) obj).f53468a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f53468a.hashCode();
    }

    public boolean b(com.android.tools.r8.graph.M2 m22) {
        return a(m22).d();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.tools.r8.internal.Ic0, com.android.tools.r8.internal.u1] */
    public com.android.tools.r8.graph.M2 c() {
        if (this.f53468a.size() != 1) {
            return null;
        }
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f53468a.o().iterator().next();
        if (this.f53468a.a(m22)) {
            return m22;
        }
        return null;
    }

    public static void a(com.android.tools.r8.graph.M2 m22, U6 u62, com.android.tools.r8.graph.M2 m23) {
        if (m23.a(m22)) {
            u62.c(false);
        }
    }

    public static a a() {
        return new a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    public void a(BiConsumer<com.android.tools.r8.graph.M2, Boolean> biConsumer) {
        this.f53468a.forEach(biConsumer);
    }

    public final void a(final Consumer consumer) {
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10070wI.a(Consumer.this, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
            }
        });
    }

    public static void a(Consumer consumer, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        if (bool.booleanValue()) {
            consumer.accept(m22);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.tools.r8.internal.Ic0, com.android.tools.r8.internal.u1] */
    public boolean a(BiPredicate<com.android.tools.r8.graph.M2, Boolean> biPredicate) {
        A30 it = this.f53468a.g().iterator();
        while (it.hasNext()) {
            InterfaceC5259Hc0 interfaceC5259Hc0 = (InterfaceC5259Hc0) it.next();
            if (biPredicate.test((com.android.tools.r8.graph.M2) interfaceC5259Hc0.getKey(), Boolean.valueOf(interfaceC5259Hc0.getBooleanValue()))) {
                return true;
            }
        }
        return false;
    }

    public AbstractC9530t40 a(com.android.tools.r8.graph.M2 m22) {
        AbstractC9687u1 abstractC9687u1 = this.f53468a;
        Boolean valueOf = abstractC9687u1.containsKey(m22) ? Boolean.valueOf(abstractC9687u1.a(m22)) : null;
        if (valueOf == null) {
            return AbstractC9530t40.f52518b;
        }
        return valueOf.booleanValue() ? AbstractC9530t40.f52517a : AbstractC9530t40.f52519c;
    }
}
