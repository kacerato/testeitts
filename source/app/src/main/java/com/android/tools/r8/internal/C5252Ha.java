package com.android.tools.r8.internal;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4389c6;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class C5252Ha {

    public static final boolean f40788f = true;

    public final C4798y f40789a;

    public final C10610zb f40790b;

    public final C8570nJ f40791c;

    public final Set f40792d = C4875Al0.a();

    public final C7541h80 f40793e = C7541h80.l();

    public C5252Ha(C4798y c4798y) {
        this.f40789a = c4798y;
        this.f40790b = new C10610zb(c4798y);
        this.f40791c = c4798y.E();
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f40789a, ((C11245i) this.f40789a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5252Ha.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void b(ExecutorService executorService) {
        a(executorService);
        c();
        b();
    }

    public final void c() {
        C8570nJ.k A10 = this.f40791c.A();
        if (!f40788f && !A10.f50787a && !A10.f50788b.isEmpty() && this.f40792d.isEmpty()) {
            throw new AssertionError((Object) "Expected to find at least one open interface");
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(this.f40792d);
        c6286Yx0.a((Iterable) this.f40792d);
        while (c6286Yx0.b()) {
            Iterator<com.android.tools.r8.graph.M2> it = ((com.android.tools.r8.graph.E0) c6286Yx0.c()).R0().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.E0 g10 = this.f40789a.g(it.next());
                if (g10 != null) {
                    c6286Yx0.b((C6286Yx0) g10);
                }
            }
        }
        this.f40789a.a(new L00((Set) this.f40792d.stream().map(new C8066kH0()).collect(Collectors.toCollection(new Supplier() {
            @Override
            public final Object get() {
                return C5252Ha.this.a();
            }
        }))));
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5252Ha.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }

    public final void b() {
        final C5094Ef0 c5094Ef0 = this.f40789a.E().f50691j;
        final ArrayList arrayList = new ArrayList(this.f40793e.f43368b.size());
        this.f40793e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                List.this.add((com.android.tools.r8.graph.H5) obj);
            }
        });
        arrayList.sort(Comparator.comparing(new C7567hH0()));
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5252Ha.this.a(c5094Ef0, (com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        Set set;
        Set set2 = this.f40792d;
        AbstractC4497i0 Q02 = h52.d().Q0();
        if (!Q02.t0()) {
            if (!f40788f && !(Q02 instanceof C4553l0) && !Q02.v0() && !(Q02 instanceof C4389c6)) {
                throw new AssertionError();
            }
            set = Collections.EMPTY_SET;
        } else {
            com.android.tools.r8.graph.G V10 = Q02.V();
            C5020Da c5020Da = new C5020Da(this, h52, V10);
            C5310Ia c5310Ia = new C5310Ia(this.f40789a, h52, this.f40793e);
            int a10 = new J9(this.f40789a, V10, c5020Da, new C5078Ea(c5310Ia), h52).a();
            boolean z10 = f40788f;
            if (!z10 && a10 != 4 && !c5310Ia.f41127e.isEmpty()) {
                throw new AssertionError();
            }
            if (a10 == 2) {
                C9 a11 = new B9(V10).a(this.f40791c);
                C5194Ga c5194Ga = new C5194Ga(this, c5020Da, h52);
                C7270fa c7270fa = new C7270fa(this.f40789a, C9038q7.f51720c, a11, c5194Ga);
                W9 w92 = (W9) a11.f39139b.f36305h.get(0);
                if (!C9.f39137c && !a11.f39138a.containsKey(w92)) {
                    throw new AssertionError();
                }
                AbstractC6255Yi d10 = c7270fa.d((AbstractC7209f9) a11.f39138a.get(w92));
                if (d10.b()) {
                    C5136Fa c5136Fa = (C5136Fa) d10;
                    c5310Ia.a(h52, c5136Fa.f40249a != null ? V10.E0().indexOf(c5136Fa.f40249a) : 0, c5136Fa.f40250b);
                } else {
                    if (!z10 && !d10.c()) {
                        throw new AssertionError();
                    }
                    Iterator it = a11.f39138a.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        AbstractC7209f9 abstractC7209f9 = (AbstractC7209f9) it.next();
                        if (c7270fa.f39187h.f39497a) {
                            InterfaceC7628hi interfaceC7628hi = c7270fa.f39182c;
                            if (interfaceC7628hi.c(abstractC7209f9) && interfaceC7628hi.b(interfaceC7628hi.d(abstractC7209f9)) && abstractC7209f9 != c7270fa.f39182c.a() && !c7270fa.f39182c.e(abstractC7209f9)) {
                            }
                        }
                        H9 h92 = (H9) c7270fa.c(abstractC7209f9);
                        h92.getClass();
                        if (h92 instanceof C7667hv) {
                            if (f40788f) {
                                c5310Ia.a(h52, r10, h92.e());
                            } else {
                                throw new AssertionError();
                            }
                        }
                        do {
                            for (int i10 = abstractC7209f9.f47880a; i10 <= abstractC7209f9.f47882c; i10++) {
                                W9 w93 = (W9) V10.f36305h.get(i10);
                                c5310Ia.a(w93, h92);
                                h92 = w93.a(h92, c5194Ga.f40520c.f40789a, c5194Ga.f40518a);
                                h92.getClass();
                                if (h92 instanceof C7667hv) {
                                    if (f40788f) {
                                        c5310Ia.a(h52, i10, h92.e());
                                    } else {
                                        throw new AssertionError();
                                    }
                                }
                            }
                            if (c7270fa.f39182c.b(abstractC7209f9)) {
                                Object a12 = c7270fa.f39182c.a(abstractC7209f9);
                                if (c7270fa.f39187h.f39497a) {
                                    InterfaceC7628hi interfaceC7628hi2 = c7270fa.f39182c;
                                    if (interfaceC7628hi2.c(a12) && interfaceC7628hi2.b(interfaceC7628hi2.d(a12)) && a12 != c7270fa.f39182c.a() && !c7270fa.f39182c.e(a12)) {
                                        abstractC7209f9 = (AbstractC7209f9) a11.a(abstractC7209f9);
                                        r10 = 0;
                                    }
                                }
                            }
                            abstractC7209f9 = null;
                            r10 = 0;
                        } while (abstractC7209f9 != null);
                    }
                }
                V10.f36308k = a10;
            } else if (a10 == 4) {
                V10.f36308k = a10;
            }
            set = c5310Ia.f41127e;
        }
        set2.addAll(set);
    }

    public final Set a() {
        return C4875Al0.b(this.f40792d.size());
    }

    public final void a(C5094Ef0 c5094Ef0, com.android.tools.r8.graph.H5 h52) {
        c5094Ef0.warning((Diagnostic) this.f40793e.f43368b.get(new C7333fv(C7374g80.f48192a, h52)));
    }
}
