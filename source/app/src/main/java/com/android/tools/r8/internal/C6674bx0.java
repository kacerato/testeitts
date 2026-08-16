package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public final class C6674bx0 extends AbstractC8780od {

    public static final boolean f46906j = true;

    public final C9201r6 f46907a = new C9201r6();

    public final IdentityHashMap f46908b = new IdentityHashMap();

    public final IdentityHashMap f46909c = new IdentityHashMap();

    public final C8534n6 f46910d = C8534n6.a();

    public final IdentityHashMap f46911e = new IdentityHashMap();

    public final C9201r6 f46912f = new C9201r6();

    public final IdentityHashMap f46913g = new IdentityHashMap();

    public final Set f46914h = AbstractC5513Ll0.c();

    public final IdentityHashMap f46915i = new IdentityHashMap();

    @Override
    public final AbstractC8947pd a(C4798y c4798y, InterfaceC6762cW interfaceC6762cW) {
        C8674nx0 c8674nx0 = (C8674nx0) interfaceC6762cW;
        if (f46906j || !c8674nx0.b()) {
            return new C6840cx0(c4798y, c8674nx0, this.f46907a, this.f46909c, this.f46910d, this.f46912f, this.f46914h);
        }
        throw new AssertionError();
    }

    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (!f46906j && this.f46910d.d(a22).size() <= 1) {
            throw new AssertionError();
        }
        this.f46910d.f50507e.put(a22, a23);
    }

    public final boolean c(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return this.f46910d.f49891c.containsKey(a23) && !a23.a(a22);
    }

    @Override
    public final void a() {
        C9201r6 c9201r6 = this.f46907a;
        c9201r6.f51964b.putAll(this.f46908b);
        this.f46908b.clear();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        this.f46911e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6674bx0.this.a(identityHashMap, identityHashMap2, (com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        this.f46910d.a(this.f46911e.o());
        this.f46910d.putAll(identityHashMap);
        identityHashMap2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6674bx0.this.b((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
        this.f46911e.clear();
        C9201r6 c9201r62 = this.f46912f;
        c9201r62.f51964b.putAll(this.f46913g);
        this.f46913g.clear();
        this.f46914h.removeAll(this.f46915i.o());
        this.f46914h.addAll(this.f46915i.values());
        this.f46915i.clear();
    }

    public final void a(Map map, Map map2, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        Set d10 = this.f46910d.d(a22);
        if (d10.isEmpty()) {
            map.put(a22, a23);
            return;
        }
        Iterator it = d10.iterator();
        while (it.hasNext()) {
            map.put((com.android.tools.r8.graph.A2) it.next(), a23);
        }
        if (this.f46910d.f50507e.containsKey(a22)) {
            if (!f46906j && d10.size() <= 1) {
                throw new AssertionError();
            }
            map2.put(a23, (com.android.tools.r8.graph.A2) this.f46910d.c(a22));
            return;
        }
        if (!f46906j && d10.size() != 1) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        Object obj = ((C6379aA) this.f46907a.f51964b.f()).get(c4554l1);
        if (obj != 0) {
            c4554l1 = obj;
        }
        this.f46908b.put(c4554l1, c4554l12);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (this.f46912f.f51964b.containsValue(a22)) {
            this.f46913g.put((com.android.tools.r8.graph.A2) ((C6379aA) this.f46912f.f51964b.f()).get(a22), a23);
        } else {
            this.f46911e.put(a22, a23);
        }
        if (this.f46914h.contains(a22)) {
            this.f46915i.put(a22, a23);
        }
    }

    public final void a(C4516j1 c4516j1, C4516j1 c4516j12, C4516j1 c4516j13, C4516j1 c4516j14) {
        if (c4516j12 != null) {
            if (!f46906j && c4516j13 != null) {
                throw new AssertionError();
            }
            this.f46910d.a(c4516j1.getReference(), c4516j12.getReference());
            this.f46910d.a(c4516j12.getReference(), c4516j12.getReference());
            C8534n6 c8534n6 = this.f46910d;
            c8534n6.f50507e.put(c4516j12.getReference(), c4516j12.getReference());
        } else {
            if (!f46906j && c4516j13 == null) {
                throw new AssertionError();
            }
            this.f46910d.a(c4516j1.getReference(), c4516j13.getReference());
        }
        if (c4516j14 == null) {
            return;
        }
        C9201r6 c9201r6 = this.f46912f;
        c9201r6.f51964b.a(c4516j1.getReference(), c4516j14.getReference(), true);
        if (c4516j14.w0()) {
            this.f46914h.add(c4516j14.getReference());
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22) {
        ((Map) this.f46909c.computeIfAbsent(h22.getType(), TU.a(new com.android.tools.r8.graph.Ra()))).put(a22, h52.getReference());
    }

    public final void a(C6674bx0 c6674bx0) {
        this.f46907a.a(c6674bx0.f46907a);
        c6674bx0.f46910d.a(new InterfaceC7328ft0() {
            @Override
            public final void a(Object obj, Object obj2, Object obj3) {
                C6674bx0.this.a((Set) obj, (com.android.tools.r8.graph.A2) obj2, (com.android.tools.r8.graph.A2) obj3);
            }
        });
        this.f46914h.addAll(c6674bx0.f46914h);
        this.f46912f.a(c6674bx0.f46912f);
        c6674bx0.f46909c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6674bx0.this.a((com.android.tools.r8.graph.M2) obj, (Map) obj2);
            }
        });
    }

    public final void a(Set set, final com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (AbstractC9907vK.b(set, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C6674bx0.this.c(a22, (com.android.tools.r8.graph.A2) obj);
            }
        })) {
            boolean z10 = f46906j;
            if (!z10 && set.size() != 1) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) set.iterator().next();
            com.android.tools.r8.graph.A2 a25 = (com.android.tools.r8.graph.A2) this.f46910d.c(a24);
            Set a10 = this.f46910d.a(a24);
            if (!z10 && !a10.contains(a24)) {
                throw new AssertionError();
            }
            this.f46910d.a((Iterable) a10, (Object) a22);
            this.f46910d.f50507e.put(a22, a25);
            return;
        }
        if (this.f46910d.f49891c.containsKey(a22) && !this.f46910d.f50507e.containsKey(a22)) {
            C8534n6 c8534n6 = this.f46910d;
            c8534n6.f50507e.put(a22, (com.android.tools.r8.graph.A2) c8534n6.c(a22));
        }
        this.f46910d.a((Iterable) set, (Object) a22);
        if (set.size() <= 1 || this.f46910d.f50507e.containsKey(a22)) {
            return;
        }
        this.f46910d.f50507e.put(a22, a23);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Map map) {
        ((Map) this.f46909c.computeIfAbsent(m22, TU.a(new com.android.tools.r8.graph.Ra()))).putAll(map);
    }
}
