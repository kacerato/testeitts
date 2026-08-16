package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C8431mX extends AbstractC6143Wj {

    public static final boolean f50322i = true;

    public final C4798y f50323f;

    public final C9099qX f50324g;

    public final IdentityHashMap f50325h;

    public C8431mX(C4798y c4798y, C9099qX c9099qX, C4387c4 c4387c4) {
        super(c4798y, c4387c4);
        this.f50325h = new IdentityHashMap();
        this.f50323f = c4798y;
        this.f50324g = c9099qX;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C8264lX c8264lX, com.android.tools.r8.graph.H2 h22) {
        C8264lX a10 = ((AbstractC8598nX) this.f50325h.getOrDefault(h22, C8264lX.f49989b)).a();
        C5058Dq c5058Dq = c8264lX.f49990a;
        C5058Dq c5058Dq2 = a10.f49990a;
        c5058Dq.getClass();
        c5058Dq.f39661b.addAll(c5058Dq2.f39661b);
        for (C4516j1 c4516j1 : h22.D1()) {
            if (!c4516j1.h1()) {
                if (!c4516j1.d1()) {
                    c4516j1.L0();
                    TW tw = c4516j1.f37320m;
                    tw.getClass();
                    if (!(tw instanceof C5160Fj)) {
                    }
                }
                C5058Dq c5058Dq3 = c8264lX.f49990a;
                c5058Dq3.getClass();
                c5058Dq3.a(c4516j1.getReference());
            }
        }
    }

    @Override
    public final void j(final com.android.tools.r8.graph.H2 h22) {
        IdentityHashMap identityHashMap = this.f50325h;
        Object obj = C8264lX.f49989b;
        boolean z10 = TU.f44487a;
        Object remove = identityHashMap.remove(h22);
        if (remove != null) {
            obj = remove;
        }
        final C8264lX a10 = ((AbstractC8598nX) obj).a();
        final C8765oX c8765oX = new C8765oX(new C5000Cq(new HashMap()));
        a(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C8431mX.this.a(c8765oX, h22, a10, (com.android.tools.r8.graph.H2) obj2);
            }
        }, h22);
        if (((C11245i) this.f50323f.f()).f57405t.b(h22)) {
            Iterator<C4516j1> it = h22.D1().iterator();
            while (it.hasNext()) {
                c8765oX.b(this.f50323f, it.next().Z0(), C5160Fj.f40293b);
            }
        } else {
            for (C4516j1 c4516j1 : h22.D1()) {
                if (this.f50323f.r().a(h22, c4516j1).h(this.f50323f.E())) {
                    if (!f50322i && !c4516j1.d1()) {
                        c4516j1.L0();
                        TW tw = c4516j1.f37320m;
                        tw.getClass();
                        if (!(tw instanceof C5160Fj)) {
                            c4516j1.L0();
                            if (!c4516j1.f37320m.E()) {
                                throw new AssertionError();
                            }
                        }
                    }
                    c8765oX.b(this.f50323f, c4516j1.Z0(), C5160Fj.f40293b);
                } else if (!c4516j1.d1()) {
                    C4798y c4798y = this.f50323f;
                    com.android.tools.r8.graph.F2 Z02 = c4516j1.Z0();
                    c4516j1.L0();
                    c8765oX.b(c4798y, Z02, c4516j1.f37320m);
                }
            }
        }
        if (!h22.p1()) {
            for (C4516j1 c4516j12 : h22.i(new Y60(new V60() {
                @Override
                public final boolean apply(Object obj2) {
                    return ((C4516j1) obj2).h1();
                }
            }))) {
                C5000Cq c5000Cq = c8765oX.f51269a;
                C5160Fj c5160Fj = C5160Fj.f40293b;
                TW tw2 = (TW) c5000Cq.f39368b.getOrDefault(c4516j12.Z0(), c5160Fj);
                if (tw2.d()) {
                    tw2 = C8097kX.a(tw2.c());
                } else if (!C8765oX.f51268c && !(tw2 instanceof C5160Fj) && !(tw2 instanceof C8097kX)) {
                    throw new AssertionError();
                }
                if (!f50322i && !(tw2 instanceof C5160Fj) && !(tw2 instanceof C8097kX)) {
                    throw new AssertionError();
                }
                C9099qX c9099qX = this.f50324g;
                com.android.tools.r8.graph.A2 reference = c4516j12.getReference();
                if (C9099qX.f51797b) {
                    c9099qX.getClass();
                } else if (c9099qX.f51798a.containsKey(reference)) {
                    throw new AssertionError();
                }
                if (!(tw2 instanceof C5160Fj)) {
                    c9099qX.f51798a.put(reference, tw2);
                }
            }
        }
        c8765oX.f51269a.f39368b.o().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return C8431mX.a(C8264lX.this, (com.android.tools.r8.graph.F2) obj2);
            }
        });
        if (c8765oX.f51269a.f39368b.isEmpty()) {
            return;
        }
        this.f50325h.put(h22, c8765oX);
    }

    @Override
    public final void l(com.android.tools.r8.graph.H2 h22) {
        HashSet hashSet = new HashSet();
        final C8264lX c8264lX = new C8264lX(new C5058Dq(hashSet));
        C4387c4 c4387c4 = this.f45516b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8431mX.this.a(c8264lX, (com.android.tools.r8.graph.H2) obj);
            }
        };
        c4387c4.getClass();
        c4387c4.a(EnumC6871d70.f47286b, consumer, h22);
        if (hashSet.isEmpty()) {
            return;
        }
        this.f50325h.put(h22, c8264lX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C8765oX c8765oX, com.android.tools.r8.graph.H2 h22, C8264lX c8264lX, com.android.tools.r8.graph.H2 h23) {
        c8765oX.a(this.f50323f, ((AbstractC8598nX) this.f50325h.getOrDefault(h23, C8765oX.f51267b)).b());
        if (!h22.isInterface() || h23.isInterface()) {
            return;
        }
        boolean z10 = f50322i;
        if (!z10 && !h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && h23.isInterface()) {
            throw new AssertionError();
        }
        HashSet<com.android.tools.r8.graph.F2> hashSet = new HashSet(c8264lX.f49990a.f39661b);
        new C5058Dq(hashSet).a(h22.D1());
        for (com.android.tools.r8.graph.F2 f22 : hashSet) {
            C11245i c11245i = (C11245i) this.f50323f.f();
            if (!C4514j.f37304i) {
                c11245i.c();
            } else {
                c11245i.getClass();
            }
            com.android.tools.r8.graph.Z4 a10 = c11245i.a(h23, f22.b(), f22.a());
            if (a10.h()) {
                if (!f50322i && !a10.k().y()) {
                    throw new AssertionError();
                }
            } else if (a10.v()) {
                c8765oX.b(this.f50323f, f22, C5160Fj.f40293b);
            } else {
                if (!f50322i && !a10.w()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.H0 p10 = a10.p();
                if (!p10.getHolder().isInterface() && p10.getHolder() != h23) {
                    c8765oX.b(this.f50323f, f22, p10.A());
                }
            }
        }
    }

    public static boolean a(C8264lX c8264lX, com.android.tools.r8.graph.F2 f22) {
        return !c8264lX.f49990a.f39661b.contains(f22);
    }
}
