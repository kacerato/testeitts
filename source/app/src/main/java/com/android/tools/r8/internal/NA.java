package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class NA {

    public static final boolean f42521c = true;

    public final C4514j f42522a;

    public final Set f42523b = AbstractC5513Ll0.c();

    public NA(C4514j c4514j) {
        this.f42522a = c4514j;
    }

    public final void a(BU bu, C4554l1 c4554l1, C4554l1 c4554l12) {
        if (this.f42522a.g(c4554l1.f38297f).f36251k.f37700b.a(c4554l1) == null) {
            this.f42523b.add(c4554l1);
        } else {
            bu.f38912d.a(c4554l1, c4554l12);
        }
    }

    public final void d(final BU bu, com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.M2 m22) {
        a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.this.c(bu, m22, (C4516j1) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.this.d(bu, m22, (C4516j1) obj);
            }
        });
    }

    public final void c(final BU bu, com.android.tools.r8.graph.M2 m22, C4516j1 c4516j1) {
        C4514j c4514j = this.f42522a;
        Objects.requireNonNull(bu);
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BU.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        biConsumer.accept(reference, reference.a(m22, c4514j.b()));
    }

    public final void c(BU bu, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = this.f42522a.g(a22.f38297f);
        com.android.tools.r8.graph.A2 a10 = this.f42522a.b().a(a22.f38297f, this.f42522a.b().a(m22, a22.y0().f36441f), a22.f38298g);
        C4516j1 b10 = g10.b(a10);
        if (b10 == null) {
            this.f42523b.add(a10);
            return;
        }
        if (b10.w0()) {
            this.f42522a.a().f38366d.f50691j.c("Static method " + ((Object) b10) + " is flagged as having a covariant return type, which is not possible.");
            return;
        }
        if (a(g10, b10)) {
            this.f42522a.a().f38366d.f50691j.c("Covariant retargeting of non final method " + ((Object) b10) + " which could lead to invalid runtime execution in overrides.");
        }
        bu.f38913e.a(a22, a10);
    }

    public static void b(BU bu, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, C4516j1 c4516j1) {
        bu.f38915g.a(a22, a23);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, Consumer consumer, Consumer consumer2) {
        com.android.tools.r8.graph.E0 g10 = this.f42522a.g(a22.f38297f);
        C4516j1 b10 = g10.b(a22);
        if (b10 == null) {
            this.f42523b.add(a22);
            return;
        }
        if (b10.w0()) {
            consumer.accept(b10);
            return;
        }
        if (a(g10, b10)) {
            this.f42522a.a().f38366d.f50691j.c("Retargeting non final method " + ((Object) b10) + " which could lead to invalid runtime execution in overrides.");
        }
        consumer2.accept(b10);
    }

    public final void b(final BU bu, final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23) {
        a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.a(BU.this, a22, a23, (C4516j1) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.b(BU.this, a22, a23, (C4516j1) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.A2 a22, Consumer consumer) {
        com.android.tools.r8.graph.E0 g10 = this.f42522a.g(a22.f38297f);
        C4516j1 b10 = g10.b(a22);
        if (b10 == null) {
            this.f42523b.add(a22);
            return;
        }
        if (b10.w0()) {
            this.f42522a.a().f38366d.f50691j.a("Cannot generate emulated dispatch for static method " + ((Object) b10));
            return;
        }
        if (!a(g10, b10)) {
            this.f42522a.a().f38366d.f50691j.c("Generating (seemingly unnecessary) emulated dispatch for final method " + ((Object) b10));
        }
        consumer.accept(b10);
    }

    public final void b(final BU bu, final IA ia2, com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.M2 m22) {
        a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.this.a(bu, ia2, m22, (C4516j1) obj);
            }
        });
    }

    public final void b(final BU bu, final IA ia2, com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23) {
        a(a22, new Consumer() {
            @Override
            public final void accept(Object obj) {
                NA.this.b(bu, ia2, a23, (C4516j1) obj);
            }
        });
    }

    public static boolean a(com.android.tools.r8.graph.E0 e02, C4516j1 c4516j1) {
        if (f42521c || !c4516j1.w0()) {
            return (e02.p1() || c4516j1.h1()) ? false : true;
        }
        throw new AssertionError();
    }

    public final void b(BU bu, IA ia2, com.android.tools.r8.graph.A2 a22, C4516j1 c4516j1) {
        if (a(c4516j1, this.f42522a, ia2)) {
            bu.f38917i.a(c4516j1.getReference(), a22);
            return;
        }
        C6257Yj c6257Yj = new C6257Yj(a22);
        C6257Yj c6257Yj2 = new C6257Yj(1, c4516j1.getReference());
        C6257Yj c6257Yj3 = new C6257Yj(2, c4516j1.getReference());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        bu.f38916h.a(c4516j1.getReference(), new C6830cu(c6257Yj2, c6257Yj3, c6257Yj, linkedHashMap));
    }

    public final void a(final IA ia2, final BU bu, BiConsumer biConsumer) {
        ia2.f40995f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.a(bu, (C4554l1) obj, (C4554l1) obj2);
            }
        });
        ia2.f40996g.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.c(bu, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        ia2.g().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.d(bu, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        ia2.f40998i.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.b(bu, ia2, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        ia2.f40999j.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.b(bu, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        ia2.f41000k.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.b(bu, ia2, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        biConsumer.accept("Cannot retarget missing references: ", this.f42523b);
    }

    public final void a(BU bu, IA ia2, com.android.tools.r8.graph.M2 m22, C4516j1 c4516j1) {
        C4724u1 b10 = this.f42522a.b();
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        b10.getClass();
        b(bu, ia2, this.f42522a.b().a(m22, reference.y0().b(b10, reference.s0()), c4516j1.C0()), c4516j1);
    }

    public static boolean a(C4516j1 c4516j1, C4514j c4514j, IA ia2) {
        final Map<com.android.tools.r8.graph.M2, JA> e10 = ia2.e();
        if (e10.isEmpty()) {
            return false;
        }
        final com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        com.android.tools.r8.graph.E0 g10 = c4514j.g(c4516j1.B0());
        if (f42521c || !e10.containsKey(g10.getType())) {
            return c4514j.b(g10, new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    AbstractC6333Zs0 a10;
                    Map map = Map.this;
                    com.android.tools.r8.graph.A2 a22 = reference;
                    a10 = AbstractC6333Zs0.a(r3.isInterface() && r0.containsKey(r3.getType()) && r3.b(r1) != null);
                    return a10;
                }
            }).c();
        }
        throw new AssertionError();
    }

    public final void d(final BU bu, com.android.tools.r8.graph.M2 m22, final C4516j1 c4516j1) {
        C4514j c4514j = this.f42522a;
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                NA.this.a(bu, c4516j1, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        biConsumer.accept(reference, reference.a(m22, c4514j.b()));
    }

    public final void a(BU bu, C4516j1 c4516j1, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.M2 B02 = c4516j1.B0();
        C4724u1 b10 = this.f42522a.b();
        bu.f38915g.a(a22, b10.a(a23.f38297f, a23.y0().b(b10, B02), a23.f38298g));
    }

    public static void a(BU bu, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, C4516j1 c4516j1) {
        bu.f38914f.a(a22, a23);
    }
}
