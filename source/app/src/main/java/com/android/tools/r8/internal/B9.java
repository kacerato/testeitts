package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class B9 {

    public static final boolean f38831c = true;

    public final IdentityHashMap f38832a = new IdentityHashMap();

    public final com.android.tools.r8.graph.G f38833b;

    public B9(com.android.tools.r8.graph.G g10) {
        this.f38833b = g10;
    }

    public static boolean a(C8103ka c8103ka, C5023Db c5023Db) {
        return c5023Db.f39557b == c8103ka;
    }

    public static boolean b(C8103ka c8103ka, C5023Db c5023Db) {
        return c5023Db.f39557b != c8103ka;
    }

    public final int a(W9 w92, int i10, final C7042e9 c7042e9, ArrayDeque arrayDeque, IdentityHashMap identityHashMap) {
        c7042e9.f47880a = i10;
        w92.getClass();
        if (w92 instanceof C8103ka) {
            a(w92.m(), arrayDeque, identityHashMap);
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator descendingIterator = arrayDeque.descendingIterator();
        while (descendingIterator.hasNext()) {
            C5023Db c5023Db = (C5023Db) descendingIterator.next();
            BiConsumer biConsumer = new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Map.this.putIfAbsent((com.android.tools.r8.graph.M2) obj, (C8103ka) obj2);
                }
            };
            Iterator<com.android.tools.r8.graph.M2> it = c5023Db.f39558c.iterator();
            Iterator<C8103ka> it2 = c5023Db.f39559d.iterator();
            while (it.hasNext()) {
                biConsumer.accept(it.next(), it2.next());
            }
            if (!C5023Db.f39555e && it2.hasNext()) {
                throw new AssertionError();
            }
        }
        while (true) {
            if (!f38831c) {
                w92.getClass();
                if (w92 instanceof C8103ka) {
                    b(w92.m(), arrayDeque, identityHashMap);
                }
            }
            if (w92.z() && c7042e9.f47881b < 0) {
                c7042e9.f47881b = i10;
            }
            if (i10 != this.f38833b.E0().size() - 1 ? this.f38832a.containsKey((W9) this.f38833b.f36305h.get(i10 + 1)) : true) {
                break;
            }
            i10++;
            w92 = (W9) this.f38833b.f36305h.get(i10);
        }
        c7042e9.f47882c = i10;
        com.android.tools.r8.graph.G g10 = this.f38833b;
        int i11 = i10 + 1;
        w92.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                B9.this.a(c7042e9, (W9) obj);
            }
        }, i11 < g10.E0().size() ? g10.E0().get(i11) : null);
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                B9.this.a(c7042e9, (com.android.tools.r8.graph.M2) obj, (C8103ka) obj2);
            }
        });
        return i10;
    }

    public final void b() {
        ArrayDeque arrayDeque = new ArrayDeque();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (C5023Db c5023Db : this.f38833b.I0()) {
            ((List) identityHashMap.computeIfAbsent(c5023Db.f39556a, TU.a(new com.android.tools.r8.graph.Uc()))).add(c5023Db);
        }
        List<W9> E02 = this.f38833b.E0();
        int i10 = 0;
        while (i10 < E02.size()) {
            W9 w92 = E02.get(i10);
            C7042e9 c7042e9 = (C7042e9) this.f38832a.get(w92);
            if (c7042e9 != null) {
                i10 = a(w92, i10, c7042e9, arrayDeque, identityHashMap);
            }
            i10++;
        }
        boolean z10 = f38831c;
        if (!z10 && !arrayDeque.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && !identityHashMap.isEmpty()) {
            throw new AssertionError();
        }
    }

    public static void b(final C8103ka c8103ka, ArrayDeque arrayDeque, IdentityHashMap identityHashMap) {
        boolean z10 = f38831c;
        if (!z10 && !arrayDeque.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return B9.b(C8103ka.this, (C5023Db) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z10 && identityHashMap.containsKey(c8103ka)) {
            throw new AssertionError();
        }
    }

    public static boolean a(C9 c92, C8570nJ c8570nJ, C7042e9 c7042e9) {
        int i10;
        int i11;
        boolean z10 = C7042e9.f47613g;
        if (!z10 && c7042e9.f47880a < 0) {
            throw new AssertionError();
        }
        if (!z10 && c7042e9.f47880a > c7042e9.f47882c) {
            throw new AssertionError();
        }
        if (!z10 && (i11 = c7042e9.f47881b) >= 0 && c7042e9.f47880a > i11) {
            throw new AssertionError();
        }
        if (!z10 && (i10 = c7042e9.f47881b) >= 0 && i10 > c7042e9.f47882c) {
            throw new AssertionError();
        }
        if (!z10) {
            if (C4875Al0.a(c7042e9.f47883d).size() != c7042e9.f47883d.size()) {
                throw new AssertionError();
            }
        } else {
            c7042e9.getClass();
        }
        if (z10) {
            return true;
        }
        W9 w92 = (W9) c92.f39139b.f36305h.get(0);
        if (!C9.f39137c && !c92.f39138a.containsKey(w92)) {
            throw new AssertionError();
        }
        if (c7042e9 == ((AbstractC7209f9) c92.f39138a.get(w92)) || !c7042e9.f47883d.isEmpty() || !c7042e9.f47884e.isEmpty() || c8570nJ.r().f50748a) {
            return true;
        }
        throw new AssertionError();
    }

    public final C9 a(final C8570nJ c8570nJ) {
        a();
        b();
        W9 w92 = (W9) this.f38833b.f36305h.get(r0.E0().size() - 1);
        w92.getClass();
        if ((w92 instanceof C8103ka) && this.f38832a.containsKey(w92)) {
            this.f38832a.remove(w92);
        }
        IdentityHashMap identityHashMap = this.f38832a;
        final C9 c92 = new C9(identityHashMap, this.f38833b);
        if (f38831c || identityHashMap.values().stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return B9.a(C9.this, c8570nJ, (C7042e9) obj);
            }
        })) {
            return c92;
        }
        throw new AssertionError();
    }

    public final void a() {
        List<W9> E02 = this.f38833b.E0();
        a(E02.get(0));
        for (int i10 = 0; i10 < E02.size(); i10++) {
            W9 w92 = E02.get(i10);
            if (w92.Q()) {
                int i11 = i10 + 1;
                W9 w93 = i11 < E02.size() ? E02.get(i11) : null;
                w92.a(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        B9.this.a((W9) obj);
                    }
                }, w93);
                if (!w92.l().V() && w93 != null) {
                    a(w93);
                }
            }
        }
        for (C5023Db c5023Db : this.f38833b.I0()) {
            a(c5023Db.f39556a);
            a(c5023Db.f39557b);
            c5023Db.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    B9.this.a((C8103ka) obj);
                }
            });
        }
    }

    public static void a(final C8103ka c8103ka, ArrayDeque arrayDeque, IdentityHashMap identityHashMap) {
        arrayDeque.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return B9.a(C8103ka.this, (C5023Db) obj);
            }
        });
        List list = (List) identityHashMap.remove(c8103ka);
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C5023Db c5023Db = (C5023Db) list.get(size);
                if (!f38831c && c5023Db.f39557b == c5023Db.f39556a) {
                    throw new AssertionError();
                }
                arrayDeque.addLast(c5023Db);
            }
        }
    }

    public final void a(W9 w92) {
        this.f38832a.computeIfAbsent(w92, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return new C7042e9();
            }
        }));
    }

    public final void a(C7042e9 c7042e9, W9 w92) {
        if (!f38831c && !this.f38832a.containsKey(w92)) {
            throw new AssertionError();
        }
        ((C7042e9) this.f38832a.get(w92)).f47883d.add(c7042e9);
    }

    public final void a(C7042e9 c7042e9, com.android.tools.r8.graph.M2 m22, C8103ka c8103ka) {
        if (!f38831c && !this.f38832a.containsKey(c8103ka)) {
            throw new AssertionError();
        }
        C7042e9 c7042e92 = (C7042e9) this.f38832a.get(c8103ka);
        if (!C7042e9.f47613g && c7042e9.f47885f.containsKey(m22)) {
            throw new AssertionError();
        }
        c7042e9.f47885f.put(m22, c7042e92);
        c7042e92.f47884e.add(c7042e9);
    }
}
