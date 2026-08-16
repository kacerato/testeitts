package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.internal.A61;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.InterfaceC6103Vr0;
import com.android.tools.r8.internal.TU;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C11416s2 {

    public static final C11416s2 f57793b = new C11416s2(Collections.EMPTY_MAP);

    public static final boolean f57794c = true;

    public final Map f57795a;

    public C11416s2(Map map) {
        this.f57795a = map;
    }

    public final void a(final InterfaceC4403d1 interfaceC4403d1, final BiConsumer biConsumer, final BiConsumer biConsumer2, final BiConsumer biConsumer3) {
        this.f57795a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11416s2.a(InterfaceC4403d1.this, biConsumer, biConsumer2, biConsumer3, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public static void a(InterfaceC4403d1 interfaceC4403d1, final BiConsumer biConsumer, final BiConsumer biConsumer2, final BiConsumer biConsumer3, com.android.tools.r8.graph.J2 j22, final AbstractC11415s1 abstractC11415s1) {
        final com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.g(j22.S()));
        if (a10 != null) {
            j22.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    BiConsumer.this.accept(a10, abstractC11415s1.a());
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11416s2.a(com.android.tools.r8.graph.H2.this, biConsumer2, abstractC11415s1, (C4554l1) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11416s2.a(com.android.tools.r8.graph.H2.this, biConsumer3, abstractC11415s1, (com.android.tools.r8.graph.A2) obj);
                }
            });
        }
    }

    public static void a(com.android.tools.r8.graph.H2 h22, BiConsumer biConsumer, AbstractC11415s1 abstractC11415s1, C4554l1 c4554l1) {
        com.android.tools.r8.graph.F5 c10 = h22.c(c4554l1);
        if (c10 != null) {
            biConsumer.accept(c10, abstractC11415s1.b());
        }
    }

    public static void a(com.android.tools.r8.graph.H2 h22, BiConsumer biConsumer, AbstractC11415s1 abstractC11415s1, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H5 e10 = h22.e(a22);
        if (e10 != null) {
            biConsumer.accept(e10, abstractC11415s1.d());
        }
    }

    public final void a(final BiPredicate biPredicate, final BiConsumer biConsumer) {
        this.f57795a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11416s2.a(BiPredicate.this, biConsumer, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public static void a(BiPredicate biPredicate, BiConsumer biConsumer, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        if (biPredicate.test(j22, abstractC11415s1)) {
            biConsumer.accept(j22, abstractC11415s1);
        }
    }

    public final AbstractC11415s1 a(AbstractC4744v2 abstractC4744v2, H1 h12) {
        return (AbstractC11415s1) this.f57795a.getOrDefault(abstractC4744v2, h12);
    }

    public final AbstractC11415s1 a(final com.android.tools.r8.graph.J2 j22) {
        return (AbstractC11415s1) this.f57795a.computeIfAbsent(j22, TU.a(new Supplier() {
            @Override
            public final Object get() {
                AbstractC11415s1 a10;
                a10 = AbstractC11432t1.a(com.android.tools.r8.graph.J2.this);
                return a10;
            }
        }));
    }

    public final boolean a(com.android.tools.r8.graph.J2 j22, Predicate predicate) {
        AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) this.f57795a.get(j22);
        return abstractC11415s1 != null && predicate.test(abstractC11415s1);
    }

    public final void a(C11416s2 c11416s2) {
        c11416s2.f57795a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11416s2.this.a((com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        a(j22).a(abstractC11415s1);
    }

    public final void a(final InterfaceC4403d1 interfaceC4403d1, final N n10) {
        TU.a(this.f57795a, new InterfaceC6103Vr0() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C11416s2.a(InterfaceC4403d1.this, n10, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public static boolean a(final InterfaceC4403d1 interfaceC4403d1, N n10, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        if (!f57794c) {
            AbstractC11398r1 abstractC11398r1 = abstractC11415s1.f57790a;
            if (abstractC11398r1.b(abstractC11398r1.c())) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.D5 d52 = (com.android.tools.r8.graph.D5) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.D5 a10;
                a10 = com.android.tools.r8.graph.H2.a(InterfaceC4403d1.this.g((com.android.tools.r8.graph.M2) obj));
                return a10;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11416s2.a(InterfaceC4403d1.this, (C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11416s2.a(InterfaceC4403d1.this, (com.android.tools.r8.graph.A2) obj);
            }
        });
        return d52 == null || !n10.a((InterfaceC4610o0) d52);
    }

    public static com.android.tools.r8.graph.D5 a(InterfaceC4403d1 interfaceC4403d1, C4554l1 c4554l1) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.g(c4554l1.s0()));
        if (a10 != null) {
            return a10.c(c4554l1);
        }
        return null;
    }

    public static com.android.tools.r8.graph.D5 a(InterfaceC4403d1 interfaceC4403d1, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(interfaceC4403d1.g(a22.s0()));
        if (a10 != null) {
            return a10.e(a22);
        }
        return null;
    }

    public final void a(com.android.tools.r8.graph.O5 o52) {
        Set o10 = this.f57795a.o();
        Objects.requireNonNull(o52);
        o10.removeIf(new A61(o52));
    }

    public static void a(final AbstractC5308Hz abstractC5308Hz, C11416s2 c11416s2, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11416s2.a(AbstractC5308Hz.this, (com.android.tools.r8.graph.M2) obj);
            }
        };
        Objects.requireNonNull(abstractC5308Hz);
        com.android.tools.r8.graph.J2 j23 = (com.android.tools.r8.graph.J2) j22.a(function, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.a((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.b((com.android.tools.r8.graph.A2) obj);
            }
        });
        if (j23 != null) {
            c11416s2.a(j23).a(abstractC11415s1);
        }
    }

    public static com.android.tools.r8.graph.J2 a(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.M2 m22) {
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(AbstractC5308Hz.g(), m22);
        if (!c10.P0()) {
            return c10;
        }
        boolean z10 = f57794c;
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        if (z10 || c10.L0()) {
            return null;
        }
        throw new AssertionError();
    }

    public final C11416s2 a(final AbstractC5308Hz abstractC5308Hz) {
        final C11416s2 c11416s2 = new C11416s2(new IdentityHashMap(this.f57795a.size()));
        this.f57795a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11416s2.a(AbstractC5308Hz.this, c11416s2, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
        return c11416s2;
    }
}
