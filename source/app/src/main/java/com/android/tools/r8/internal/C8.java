package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11333n3;
import com.android.tools.r8.synthesis.S;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiPredicate;
import java.util.function.Predicate;

public final class C8 extends E8 {

    public static final boolean f39128e = true;

    public final AbstractC7431gX f39129a;

    public final C8200l6 f39130b = new C8200l6(new IdentityHashMap(), new IdentityHashMap());

    public final Set f39131c = AbstractC5513Ll0.c();

    public final Set f39132d = ConcurrentHashMap.newKeySet();

    public C8(final C4798y c4798y, C10209x8 c10209x8, AbstractC7431gX abstractC7431gX) {
        Predicate predicate;
        C11333n3 c11333n3;
        this.f39129a = abstractC7431gX;
        final C8570nJ E10 = c4798y.E();
        if (E10.T() && E10.W()) {
            AbstractC8374m80 a10 = ZW.a(c4798y, C4387c4.a(c4798y, ((C4514j) c4798y.f()).d()), ((C11245i) c4798y.f()).d(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8.a(C4798y.this, E10, (com.android.tools.r8.graph.H5) obj);
                }
            });
            Objects.requireNonNull(a10);
            predicate = new C7383gB0(a10);
        } else {
            predicate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8.b(C4798y.this, E10, (com.android.tools.r8.graph.H5) obj);
                }
            };
        }
        for (D00 d00 : c10209x8.a()) {
            com.android.tools.r8.graph.H5 a11 = d00.a();
            com.android.tools.r8.graph.A2 reference = a11.getReference();
            if (!predicate.test(a11) && (!c4798y.E().L().f50778l || !a11.d().k1().d())) {
                C4516j1 d10 = a11.d();
                d10.L0();
                if (d10.j1() && d10.V0().isEmpty() && (c11333n3 = c4798y.f38420m) != null) {
                    if (c11333n3.f57555a.contains(a11.getHolder().getType())) {
                        continue;
                    }
                }
                int i10 = d00.f39408c;
                if (i10 == 1) {
                    com.android.tools.r8.shaking.I1 a12 = c4798y.a(a11);
                    a12.getClass();
                    if (a11.A().H() || (a12.c(E10) && a12.e(E10) && a12.f56565x)) {
                        boolean z10 = abstractC7431gX instanceof P60;
                        if (!z10 || !c4798y.f38408a.g().a(a11.p(), new BiPredicate() {
                            @Override
                            public final boolean test(Object obj, Object obj2) {
                                return C8.a((S.b) obj, (com.android.tools.r8.synthesis.S) obj2);
                            }
                        })) {
                            TreeSet treeSet = d00.f39410e;
                            if (!treeSet.isEmpty()) {
                                if (!f39128e && treeSet.size() != 1) {
                                    throw new AssertionError();
                                }
                                a11 = ((D00) treeSet.iterator().next()).a();
                            }
                            if (!f39128e && this.f39130b.f49890b.containsKey(reference)) {
                                throw new AssertionError();
                            }
                            this.f39130b.a(reference, a11.getReference());
                            if (z10 && c4798y.a(a11).a(a11)) {
                                ((P60) abstractC7431gX).f43123e.add((AbstractC8374m80) a11);
                            }
                        }
                    }
                } else if (i10 > 1 && abstractC7431gX.f()) {
                    this.f39131c.add(reference);
                }
            }
        }
    }

    public static boolean a(C4798y c4798y, C8570nJ c8570nJ, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.shaking.I1 a10 = c4798y.a(h52);
        a10.getClass();
        if (h52.A().H() ? true : a10.g(c8570nJ)) {
            if (!(h52.A().H() ? false : a10.d(c8570nJ))) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(C4798y c4798y, C8570nJ c8570nJ, com.android.tools.r8.graph.H5 h52) {
        if (h52.A().H()) {
            com.android.tools.r8.shaking.I1 a10 = c4798y.a(h52);
            boolean z10 = f39128e;
            if (!z10) {
                a10.getClass();
                if (!(h52.A().H() ? true : a10.g(c8570nJ))) {
                    throw new AssertionError();
                }
            }
            r1 = false;
            if (!z10) {
                a10.getClass();
                if (h52.A().H() ? false : a10.d(c8570nJ)) {
                    throw new AssertionError();
                }
            }
        }
        return r1;
    }

    @Override
    public final void c(com.android.tools.r8.graph.H5 h52) {
        if (this.f39129a.f()) {
            return;
        }
        if (!f39128e) {
            AbstractC7431gX abstractC7431gX = this.f39129a;
            abstractC7431gX.getClass();
            if (!(abstractC7431gX instanceof P60)) {
                throw new AssertionError();
            }
        }
        C8200l6 c8200l6 = this.f39130b;
        if (c8200l6.f49891c.containsKey(h52.getReference())) {
            this.f39132d.add(h52.getReference());
        }
    }

    @Override
    public final void d(com.android.tools.r8.graph.H5 h52) {
        this.f39130b.f(h52.getReference());
        this.f39131c.remove(h52.getReference());
    }

    public static boolean a(S.b bVar, com.android.tools.r8.synthesis.S s10) {
        bVar.getClass();
        return !((InterfaceC7166ev.a(bVar, s10.f58181h) || InterfaceC7166ev.a(bVar, s10.f58182i)) ? false : true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        if (this.f39132d.contains(h53.getReference())) {
            return false;
        }
        return h53.getReference().a((com.android.tools.r8.graph.A2) this.f39130b.f49890b.get(h52.getReference()));
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.H5 h52) {
        return this.f39131c.contains(h52.getReference());
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        C8200l6 c8200l6 = this.f39130b;
        return c8200l6.f49890b.containsKey(h52.getReference());
    }
}
