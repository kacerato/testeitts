package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4556l3;
import com.android.tools.r8.graph.InterfaceC4575m3;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11514y;
import com.android.tools.r8.shaking.N;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5711Oy {

    public static final boolean f43083e = true;

    public final C4798y f43084a;

    public final C8570nJ f43085b;

    public final C5485La0 f43086c;

    public final IdentityHashMap f43087d = new IdentityHashMap();

    public C5711Oy(C4798y c4798y, C5485La0 c5485La0) {
        if (!f43083e && !c4798y.E().a0().f50797a) {
            throw new AssertionError();
        }
        this.f43084a = c4798y;
        this.f43085b = c4798y.E();
        this.f43086c = c5485La0;
    }

    public final void a(C8048kB c8048kB, C6862d40 c6862d40, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        c8048kB.a(h52, (AbstractC8028k40) AbstractC8529n40.f50496b, (AbstractC7431gX) c6862d40, c5035Df, EW.b(this.f43084a), C8659ns0.c());
    }

    public final void a(N.a aVar, C4554l1 c4554l1) {
        if (!f43083e && !aVar.b() && !aVar.a()) {
            throw new AssertionError();
        }
        ((Map) this.f43087d.computeIfAbsent(c4554l1.s0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5711Oy.a((com.android.tools.r8.graph.M2) obj);
            }
        })).put(c4554l1, aVar);
    }

    public final void c(final Consumer consumer) {
        C11245i c11245i = (C11245i) this.f43084a.f();
        c11245i.f57405t.a(this.f43086c.f41995g, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5711Oy.this.a(consumer, (com.android.tools.r8.graph.H2) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5711Oy.a((C8085kR) obj);
            }
        }, c11245i);
    }

    public final void d(Consumer consumer) {
        a(consumer);
        c(consumer);
    }

    public final void b(final Consumer consumer) {
        ((C11245i) this.f43084a.f()).f57404s.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5711Oy.this.a(consumer, (InterfaceC4556l3) obj);
            }
        });
    }

    public final C11514y a(final N.a aVar) {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5711Oy.this.a(aVar, (C4554l1) obj);
            }
        });
        ((C11245i) this.f43084a.f()).f57404s.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C5711Oy.this.a((C4554l1) obj, (C4613o3) obj2);
            }
        });
        if (aVar.a()) {
            return new C5653Ny(this);
        }
        return C11514y.f57988a;
    }

    public final boolean a(C4554l1 c4554l1, C4613o3 c4613o3) {
        return a(c4554l1);
    }

    public static Map a(com.android.tools.r8.graph.M2 m22) {
        return new IdentityHashMap();
    }

    public final void a(C7215fB c7215fB) {
        ArrayList arrayList = new ArrayList();
        for (C5634No0 c5634No0 : c7215fB.b((Predicate) new YN0())) {
            if (a(c5634No0.getField())) {
                arrayList.add(c5634No0);
            }
        }
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C5634No0 c5634No02 = (C5634No0) obj;
            if (c5634No02.f54317b != null) {
                AbstractC7716iB.a(AbstractC6200Xj.a(c5634No02));
            }
        }
        c7215fB.x();
        if (!f43083e && !c7215fB.b(this.f43084a)) {
            throw new AssertionError();
        }
    }

    public final boolean a(C4554l1 c4554l1) {
        return ((Map) this.f43087d.getOrDefault(c4554l1.s0(), Collections.EMPTY_MAP)).containsKey(c4554l1);
    }

    public final void a(final C8048kB c8048kB, ExecutorService executorService, C8659ns0 c8659ns0) {
        c8659ns0.b("[Proto] Post optimize generated extension registry");
        final C6862d40 c6862d40 = new C6862d40(C7097eX.f47704c, this.f43084a.k(), AbstractC8374m80.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                C5711Oy.this.d(consumer);
            }
        }));
        c6862d40.a(new InterfaceC6695c40() {
            @Override
            public final void a(com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
                C5711Oy.this.a(c8048kB, c6862d40, h52, c5035Df);
            }
        }, this.f43084a.E().G(), executorService);
        c8659ns0.d();
    }

    public final void a(final Consumer consumer) {
        final N.a aVar = N.a.f56826c;
        final Set c10 = AbstractC5513Ll0.c();
        this.f43087d.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((Map) obj).forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        C5711Oy.a(N.a.this, r2, (C4554l1) obj2, (N.a) obj3);
                    }
                });
            }
        });
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5711Oy.this.a(consumer, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public static void a(N.a aVar, Set set, C4554l1 c4554l1, N.a aVar2) {
        if (aVar2 == aVar) {
            set.add(c4554l1.s0());
        }
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(((C11245i) this.f43084a.f()).g(m22));
        if (a10 == null || !a10.c1()) {
            return;
        }
        consumer.accept(a10.h(a10.L0()));
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        h22.h(consumer, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5711Oy.this.a((C4516j1) obj);
            }
        });
    }

    public final boolean a(C4516j1 c4516j1) {
        return this.f43086c.c(c4516j1.getReference());
    }

    public static void a(C8085kR c8085kR) {
        if (!f43083e) {
            throw new AssertionError();
        }
    }

    public final boolean a(com.android.tools.r8.graph.F5 f52, InterfaceC4575m3 interfaceC4575m3, AbstractC11516y1 abstractC11516y1) {
        abstractC11516y1.getClass();
        if (abstractC11516y1.a(f52.d(), f52.getHolder()).d(this.f43085b) || f52.getReference().f37449i != this.f43086c.f41996h) {
            return false;
        }
        C4613o3 c4613o3 = (C4613o3) ((C4594n3) interfaceC4575m3).f37507a.get(f52.getReference());
        if (c4613o3 == null) {
            return false;
        }
        final C5485La0 c5485La0 = this.f43086c;
        Objects.requireNonNull(c5485La0);
        if (c4613o3.f37538c.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5485La0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        })) {
            int i10 = c4613o3.f37537b;
            if ((i10 & 8) == 0 && (i10 & 1) == 0 && (i10 & 2) == 0 && (i10 & 32) == 0) {
                return true;
            }
        }
        return false;
    }

    public final void a(Consumer consumer, InterfaceC4556l3 interfaceC4556l3) {
        C4554l1 c4554l1 = ((C4613o3) interfaceC4556l3).f37536a;
        C11245i c11245i = (C11245i) this.f43084a.f();
        com.android.tools.r8.graph.D3 c10 = c11245i.c(c4554l1);
        C4594n3 c4594n3 = c11245i.f57404s;
        AbstractC11516y1 abstractC11516y1 = c11245i.f57407v;
        com.android.tools.r8.graph.F5 r10 = c10.r();
        if (r10 == null || !a(r10, c4594n3, abstractC11516y1)) {
            return;
        }
        consumer.accept(c4554l1);
    }
}
