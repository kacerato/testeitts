package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC6103Vr0;
import com.android.tools.r8.internal.InterfaceC7328ft0;
import com.android.tools.r8.internal.TU;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public abstract class C {

    public static final boolean f56369b = true;

    public final Map f56370a;

    public C() {
        this.f56370a = new ConcurrentHashMap();
    }

    public abstract C11416s2 a();

    public final void a(final InterfaceC4403d1 interfaceC4403d1, final InterfaceC7328ft0 interfaceC7328ft0, final InterfaceC7328ft0 interfaceC7328ft02, final InterfaceC7328ft0 interfaceC7328ft03) {
        this.f56370a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C11416s2) obj2).a(InterfaceC4403d1.this, new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        InterfaceC7328ft0.this.a(r2, (com.android.tools.r8.graph.H2) obj3, (C11280k1) obj4);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        InterfaceC7328ft0.this.a(r2, (com.android.tools.r8.graph.F5) obj3, (C11365p1) obj4);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj3, Object obj4) {
                        InterfaceC7328ft0.this.a(r2, (com.android.tools.r8.graph.H5) obj3, (H1) obj4);
                    }
                });
            }
        });
    }

    public final C11416s2 b(C11416s2 c11416s2) {
        return (C11416s2) this.f56370a.getOrDefault(C11144c0.f57206a, c11416s2);
    }

    public C(int i10) {
        this.f56370a = new HashMap(i10);
    }

    public final AbstractC11415s1 a(Function function) {
        C11144c0 c11144c0 = C11144c0.f57206a;
        C11416s2 c11416s2 = (C11416s2) this.f56370a.get(c11144c0);
        if (c11416s2 == null) {
            return null;
        }
        AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) function.apply(c11416s2);
        if (c11416s2.f57795a.isEmpty()) {
        }
        return abstractC11415s1;
    }

    public final C11416s2 a(AbstractC11161d0 abstractC11161d0) {
        return (C11416s2) this.f56370a.computeIfAbsent(abstractC11161d0, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return C.this.a();
            }
        }));
    }

    public final C11416s2 a(C11416s2 c11416s2) {
        return (C11416s2) this.f56370a.getOrDefault(C11144c0.f57206a, c11416s2);
    }

    public final void a(C c10) {
        c10.f56370a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C.this.a((AbstractC11161d0) obj, (C11416s2) obj2);
            }
        });
    }

    public final void a(AbstractC11161d0 abstractC11161d0, C11416s2 c11416s2) {
        a(abstractC11161d0).a(c11416s2);
    }

    public final void a(final InterfaceC4403d1 interfaceC4403d1, final N n10) {
        TU.a(this.f56370a, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C.a(InterfaceC4403d1.this, n10, (AbstractC11161d0) obj, (C11416s2) obj2);
            }
        });
    }

    public static boolean a(InterfaceC4403d1 interfaceC4403d1, N n10, AbstractC11161d0 abstractC11161d0, C11416s2 c11416s2) {
        if (abstractC11161d0.b()) {
            com.android.tools.r8.graph.E0 g10 = interfaceC4403d1.g(abstractC11161d0.a().f57123a);
            if (g10 == null || !n10.a((InterfaceC4610o0) g10)) {
                return true;
            }
        } else if (!f56369b && !(abstractC11161d0 instanceof C11144c0)) {
            throw new AssertionError();
        }
        if (!f56369b && c11416s2.f57795a.isEmpty()) {
            throw new AssertionError();
        }
        c11416s2.a(interfaceC4403d1, n10);
        return c11416s2.f57795a.isEmpty();
    }

    public final C11280k1 a(final com.android.tools.r8.graph.M2 m22) {
        return (C11280k1) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.a(com.android.tools.r8.graph.M2.this, (C11416s2) obj);
            }
        });
    }

    public static C11280k1 a(com.android.tools.r8.graph.M2 m22, C11416s2 c11416s2) {
        return (C11280k1) c11416s2.f57795a.remove(m22);
    }

    public final C11365p1 a(final C4554l1 c4554l1) {
        return (C11365p1) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.a(C4554l1.this, (C11416s2) obj);
            }
        });
    }

    public static C11365p1 a(C4554l1 c4554l1, C11416s2 c11416s2) {
        return (C11365p1) c11416s2.f57795a.remove(c4554l1);
    }

    public final H1 a(final com.android.tools.r8.graph.A2 a22) {
        return (H1) a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.a(com.android.tools.r8.graph.A2.this, (C11416s2) obj);
            }
        });
    }

    public static H1 a(com.android.tools.r8.graph.A2 a22, C11416s2 c11416s2) {
        return (H1) c11416s2.f57795a.remove(a22);
    }

    public final void a(Predicate predicate) {
        this.f56370a.values().removeIf(predicate);
    }

    public final B a(final AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        c8659ns0.b("Rewrite DependentMinimumKeepInfoCollection");
        final B b10 = new B(this.f56370a.size());
        this.f56370a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C.a(AbstractC5308Hz.this, b10, (AbstractC11161d0) obj, (C11416s2) obj2);
            }
        });
        c8659ns0.d();
        return b10;
    }

    public static void a(AbstractC5308Hz abstractC5308Hz, C c10, AbstractC11161d0 abstractC11161d0, C11416s2 c11416s2) {
        AbstractC11161d0 a10 = abstractC11161d0.a(abstractC5308Hz);
        if (a10 instanceof C11127b0) {
            return;
        }
        c10.a(a10).a(c11416s2.a(abstractC5308Hz));
    }
}
