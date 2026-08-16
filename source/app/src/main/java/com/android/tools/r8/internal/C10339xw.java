package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C10339xw {

    public static final boolean f53876g = true;

    public final C4798y f53877a;

    public final C7215fB f53878b;

    public final com.android.tools.r8.graph.H5 f53879c;

    public final C9420sR f53880d;

    public final List f53881e;

    public IdentityHashMap f53882f;

    public C10339xw(C4798y c4798y, final C7215fB c7215fB) {
        this.f53877a = c4798y;
        this.f53878b = c7215fB;
        this.f53879c = c7215fB.j();
        this.f53880d = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C10339xw.a(C7215fB.this);
            }
        });
        this.f53881e = c7215fB.f();
    }

    public static C6993dt a(C7215fB c7215fB) {
        return new C6993dt(c7215fB, 1);
    }

    public final boolean b(com.android.tools.r8.graph.F5 f52) {
        if (!f53876g && f52.getHolder() != this.f53879c.getHolder()) {
            throw new AssertionError();
        }
        C5634No0 c5634No0 = null;
        for (C5634No0 c5634No02 : this.f53878b.b((Predicate) new YN0())) {
            if (c5634No02.getField().a(f52.getReference())) {
                if (c5634No0 != null) {
                    return false;
                }
                c5634No0 = c5634No02;
            }
        }
        if (c5634No0 != null && !a(f52, c5634No0)) {
            C9420sR c9420sR = this.f53880d;
            C6993dt c6993dt = (C6993dt) c9420sR.a(c9420sR.f52359b);
            W5 b10 = c5634No0.b();
            List list = this.f53881e;
            c6993dt.getClass();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                if (!c6993dt.a((W5) it.next(), b10)) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean a(com.android.tools.r8.graph.F5 f52) {
        if (!f53876g && f52.getHolder() != this.f53879c.getHolder()) {
            throw new AssertionError();
        }
        C10340xw0 m10 = this.f53878b.m();
        C9225rE c9225rE = null;
        for (C9225rE c9225rE2 : C9073qK.a(m10.b0(), new C9763uV0())) {
            if (c9225rE2.getField().a(f52.getReference())) {
                if (c9225rE != null) {
                    return false;
                }
                c9225rE = c9225rE2;
            }
        }
        if (c9225rE != null && !a(f52, c9225rE)) {
            C9420sR c9420sR = this.f53880d;
            C6993dt c6993dt = (C6993dt) c9420sR.a(c9420sR.f52359b);
            W5 b10 = c9225rE.b();
            List list = this.f53881e;
            c6993dt.getClass();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                if (!c6993dt.a((W5) it.next(), b10)) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean a(com.android.tools.r8.graph.F5 f52, AbstractC7670hw abstractC7670hw) {
        AbstractC10561zE next;
        W5 b10 = abstractC7670hw.b();
        for (W5 w52 : b10.u()) {
            if (this.f53882f == null) {
                this.f53882f = a();
            }
            if (((AbstractC8849p) this.f53882f.get(w52)).a(f52)) {
                return true;
            }
        }
        AE H10 = b10.H();
        while (H10.hasNext() && (next = H10.next()) != abstractC7670hw) {
            if (next.b(this.f53877a, this.f53879c).a(f52)) {
                return true;
            }
        }
        return false;
    }

    public final IdentityHashMap a() {
        boolean z10;
        boolean z11;
        Set<C4460g1> set;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        W5 k10 = this.f53878b.k();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(k10);
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.removeFirst();
            boolean containsKey = identityHashMap.containsKey(w52);
            AbstractC8849p abstractC8849p = (AbstractC8849p) identityHashMap.computeIfAbsent(w52, new Function() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC8849p abstractC8849p2;
                    abstractC8849p2 = C5701Ot.f43063a;
                    return abstractC8849p2;
                }
            });
            abstractC8849p.getClass();
            if (!(abstractC8849p instanceof C8835ov0)) {
                if (!f53876g && !abstractC8849p.d()) {
                    throw new AssertionError();
                }
                LQ b10 = abstractC8849p.b();
                int size = containsKey ? b10.size() : -1;
                Iterator<W5> it = w52.u().iterator();
                while (true) {
                    z10 = true;
                    if (!it.hasNext()) {
                        z11 = false;
                        break;
                    }
                    AbstractC8849p abstractC8849p2 = (AbstractC8849p) identityHashMap.getOrDefault(it.next(), C5701Ot.f43063a);
                    abstractC8849p2.getClass();
                    if (!(abstractC8849p2 instanceof C5701Ot)) {
                        if (abstractC8849p2 instanceof C8835ov0) {
                            z11 = true;
                            break;
                        }
                        if (!f53876g && !(abstractC8849p2 instanceof C9123qg)) {
                            throw new AssertionError();
                        }
                        AbstractC8849p abstractC8849p3 = (AbstractC8849p) b10;
                        abstractC8849p3.getClass();
                        if (!(abstractC8849p3 instanceof C9123qg)) {
                            b10 = new C9123qg();
                        }
                        b10.a().f51848a.addAll(abstractC8849p2.a().f51848a);
                    }
                }
                if (!z11) {
                    if (containsKey) {
                        if (!f53876g) {
                            com.android.tools.r8.graph.H5 h52 = this.f53879c;
                            Y5 it2 = w52.l().iterator();
                            while (it2.hasNext()) {
                                AbstractC8849p b11 = it2.next().b(this.f53877a, h52);
                                if (!f53876g) {
                                    b11.getClass();
                                    if (b11 instanceof C8835ov0) {
                                        throw new AssertionError();
                                    }
                                }
                                b11.getClass();
                                if (!(b11 instanceof C5701Ot)) {
                                    C9123qg a10 = b11.a();
                                    a10.getClass();
                                    if (C8570nJ.b()) {
                                        set = Collections.unmodifiableSet(a10.f51848a);
                                    } else {
                                        set = a10.f51848a;
                                    }
                                    for (C4460g1 c4460g1 : set) {
                                        if (!f53876g && !b10.a(c4460g1)) {
                                            throw new AssertionError();
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        Y5 it3 = w52.l().iterator();
                        while (it3.hasNext()) {
                            AbstractC8849p b12 = it3.next().b(this.f53877a, this.f53879c);
                            b12.getClass();
                            if (!(b12 instanceof C5701Ot)) {
                                if (b12 instanceof C8835ov0) {
                                    break;
                                }
                                AbstractC8849p abstractC8849p4 = (AbstractC8849p) b10;
                                abstractC8849p4.getClass();
                                if (!(abstractC8849p4 instanceof C9123qg)) {
                                    b10 = new C9123qg();
                                }
                                b10.a().f51848a.addAll(b12.a().f51848a);
                            }
                        }
                    }
                }
                z10 = z11;
                if (z10) {
                    identityHashMap.put(w52, C8835ov0.f51388a);
                } else {
                    if (b10 != abstractC8849p) {
                        identityHashMap.put(w52, b10.a());
                    }
                    if (b10.size() == size) {
                        continue;
                    } else if (!f53876g && b10.size() <= size) {
                        throw new AssertionError();
                    }
                }
                arrayDeque.addAll(w52.v());
            }
        }
        return identityHashMap;
    }
}
