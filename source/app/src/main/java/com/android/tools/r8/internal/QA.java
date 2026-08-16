package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;

public final class QA {

    public static final boolean f43492e = true;

    public final C4514j f43494b;

    public final C9933vX f43493a = C9933vX.f53136a;

    public final Set f43495c = AbstractC5513Ll0.c();

    public final Set f43496d = AbstractC5513Ll0.c();

    public QA(C4514j c4514j) {
        this.f43494b = c4514j;
    }

    public final void a(IA ia2, final IdentityHashMap identityHashMap) {
        ia2.j().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                QA.this.a(identityHashMap, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
    }

    public final void a(Map map, com.android.tools.r8.graph.M2 m22, Set set) {
        com.android.tools.r8.graph.E0 g10 = this.f43494b.g(m22);
        if (g10 == null) {
            this.f43495c.add(m22);
            map.remove(m22);
        } else {
            a(g10, set, (PA) map.get(m22), map);
        }
    }

    public static LinkedHashMap a(IdentityHashMap identityHashMap) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList(identityHashMap.o());
        arrayList.sort(new u.K0());
        LinkedList linkedList = new LinkedList(arrayList);
        while (!linkedList.isEmpty()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) linkedList.removeFirst();
            PA pa2 = (PA) identityHashMap.get(m22);
            if (AbstractC9907vK.a(pa2.f43154b, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return LinkedHashMap.this.containsKey((com.android.tools.r8.graph.M2) obj);
                }
            })) {
                linkedHashMap.put(m22, pa2);
            } else {
                linkedList.addLast(m22);
            }
        }
        return linkedHashMap;
    }

    public static void a(final LinkedHashMap linkedHashMap, final BU bu) {
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                QA.a(LinkedHashMap.this, bu, (com.android.tools.r8.graph.M2) obj, (PA) obj2);
            }
        });
    }

    public static void a(LinkedHashMap linkedHashMap, BU bu, com.android.tools.r8.graph.M2 m22, PA pa2) {
        LinkedList linkedList = new LinkedList(pa2.f43154b);
        while (!linkedList.isEmpty()) {
            ArrayList arrayList = ((PA) linkedHashMap.get((com.android.tools.r8.graph.M2) linkedList.removeFirst())).f43154b;
            pa2.f43154b.removeAll(arrayList);
            linkedList.addAll(arrayList);
        }
        bu.f38920l.put(m22, pa2.a());
    }

    public final void a(com.android.tools.r8.graph.E0 e02, Set set, PA pa2, Map map) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) it.next();
            C9933vX c9933vX = this.f43493a;
            c9933vX.getClass();
            hashSet.add(new C7333fv(c9933vX, a22));
        }
        LinkedList linkedList = new LinkedList();
        ArrayList arrayList = pa2.f43153a;
        linkedList.add(e02);
        while (!linkedList.isEmpty()) {
            com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) linkedList.removeFirst();
            if (e03 != e02 && map.containsKey(e03.f36245e)) {
                ((PA) map.get(e03.f36245e)).f43154b.add(e02.f36245e);
            }
            if (!e02.o1()) {
                for (C4516j1 c4516j1 : e03.D1()) {
                    c4516j1.L0();
                    if (!c4516j1.f37314g.h() && !this.f43494b.b().f37859F4.f38227e.a(c4516j1) && !this.f43494b.b().f37859F4.f38225c.a(c4516j1)) {
                        if (!f43492e) {
                            c4516j1.L0();
                            if (!c4516j1.f37314g.k() && !c4516j1.p1()) {
                                throw new AssertionError();
                            }
                        }
                        C9933vX c9933vX2 = this.f43493a;
                        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
                        c9933vX2.getClass();
                        boolean contains = hashSet.contains(new C7333fv(c9933vX2, reference));
                        if (!contains) {
                            int size = arrayList.size();
                            int i10 = 0;
                            while (true) {
                                if (i10 >= size) {
                                    break;
                                }
                                Object obj = arrayList.get(i10);
                                i10++;
                                if (((com.android.tools.r8.graph.A2) obj).c(c4516j1.getReference())) {
                                    contains = true;
                                    break;
                                }
                            }
                        }
                        if (!contains) {
                            if (!c4516j1.h1()) {
                                c4516j1.L0();
                                if (!c4516j1.f37314g.h()) {
                                    if (!c4516j1.H0()) {
                                        pa2.f43155c = true;
                                    }
                                    arrayList.add(c4516j1.getReference());
                                }
                            }
                            this.f43496d.add(c4516j1.getReference());
                        }
                    }
                }
            }
            for (com.android.tools.r8.graph.M2 m22 : e03.f36248h.f36675b) {
                com.android.tools.r8.graph.E0 g10 = this.f43494b.g(m22);
                if (g10 != null) {
                    linkedList.add(g10);
                }
            }
            if (e03.f36247g != this.f43494b.b().f38068i2) {
                com.android.tools.r8.graph.E0 g11 = this.f43494b.g(e03.f36247g);
                if (!f43492e && g11 == null) {
                    throw new AssertionError((Object) ("Missing supertype " + ((Object) e03.f36247g) + " while wrapping " + ((Object) e02)));
                }
                linkedList.add(g11);
            }
        }
    }
}
