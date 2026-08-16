package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4408d6;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class WZ extends AbstractC10269xY {

    public final C4798y f45469b;

    public final C4387c4 f45470c;

    public WZ(C4798y c4798y, C4387c4 c4387c4) {
        this.f45469b = c4798y;
        this.f45470c = c4387c4;
    }

    @Override
    public final Collection a(AA aa2, Object obj) {
        Map map = (Map) obj;
        if (!aa2.j()) {
            int i10 = AbstractC7552hC.f48487c;
            return new C5920Sm0(aa2);
        }
        AA aa3 = new AA();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Set a10 = a(h22, aa2, map);
            Map map2 = ((VZ) map.get(h22.getType())).f45084b;
            Iterator it2 = a10.iterator();
            while (true) {
                if (it2.hasNext()) {
                    com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) it2.next();
                    Iterator it3 = ((Set) map2.getOrDefault(AbstractC9280rd.a(a22, a22), Collections.EMPTY_SET)).iterator();
                    while (it3.hasNext()) {
                        if (((com.android.tools.r8.graph.A2) it3.next()) != a22) {
                            break;
                        }
                    }
                } else {
                    aa3.f38553b.add(h22);
                    break;
                }
            }
        }
        if (aa3.k()) {
            return Collections.EMPTY_LIST;
        }
        boolean z10 = AT.f38618a;
        LinkedList linkedList = new LinkedList();
        linkedList.add(aa3);
        return linkedList;
    }

    public final IdentityHashMap b(Collection collection) {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        C4408d6 c4408d6 = new C4408d6(this.f45469b, 1);
        c4408d6.f36818e = true;
        c4408d6.a(collection, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                WZ.a(Map.this, (com.android.tools.r8.graph.E0) obj);
            }
        });
        identityHashMap.o().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return WZ.this.c((com.android.tools.r8.graph.M2) obj);
            }
        });
        return identityHashMap;
    }

    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.H2.a(this.f45469b.g(m22)) == null;
    }

    public final boolean d(com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.H2.a(this.f45469b.g(m22)) == null;
    }

    @Override
    public final String f() {
        return "NoDefaultInterfaceMethodCollisions";
    }

    @Override
    public final boolean l() {
        return !this.f45469b.E().K().f50762c;
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        return com.android.tools.r8.graph.H2.a(this.f45469b.g(m22)) == null;
    }

    public static Set a(com.android.tools.r8.graph.H2 h22, AA aa2, Map map) {
        Set c10 = AbstractC5513Ll0.c();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
            if (h23 != h22) {
                Collection values = ((VZ) map.get(h23.getType())).f45083a.values();
                Objects.requireNonNull(c10);
                values.forEach(new C6854d11(c10));
            }
        }
        return c10;
    }

    @Override
    public final Object a(LinkedList linkedList, ExecutorService executorService) {
        Collection<com.android.tools.r8.graph.H2> d10 = ((C4514j) this.f45469b.f()).d();
        IdentityHashMap a10 = a(d10, b(d10));
        Map a11 = a(d10, a10, linkedList, this.f45470c);
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<E> it = linkedList.iterator();
        while (it.hasNext()) {
            AA aa2 = (AA) it.next();
            if (aa2.j()) {
                Iterator<E> it2 = aa2.f38553b.iterator();
                while (it2.hasNext()) {
                    com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it2.next();
                    com.android.tools.r8.graph.M2 type = h22.getType();
                    com.android.tools.r8.graph.M2 type2 = h22.getType();
                    Map map = Collections.EMPTY_MAP;
                    identityHashMap.put(type, new VZ((Map) a10.getOrDefault(type2, map), (Map) ((HashMap) a11).getOrDefault(h22.getType(), map)));
                }
            }
        }
        return identityHashMap;
    }

    public static void a(Map map, com.android.tools.r8.graph.E0 e02) {
        C5058Dq c5058Dq = new C5058Dq(new HashSet(((C5058Dq) map.getOrDefault(e02.a1(), C5058Dq.f39660c)).f39661b));
        Iterator<C4516j1> it = e02.D1().iterator();
        while (it.hasNext()) {
            c5058Dq.f39661b.add(it.next().Z0());
        }
        map.put(e02.getType(), c5058Dq);
    }

    public final IdentityHashMap a(Collection collection, final IdentityHashMap identityHashMap) {
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        new C4408d6(this.f45469b, 1).a(collection, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                WZ.a(Map.this, identityHashMap, (com.android.tools.r8.graph.E0) obj);
            }
        });
        identityHashMap2.o().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return WZ.this.d((com.android.tools.r8.graph.M2) obj);
            }
        });
        return identityHashMap2;
    }

    public static void a(Map map, Map map2, com.android.tools.r8.graph.E0 e02) {
        final HashMap hashMap = new HashMap();
        Iterator it = e02.z0().iterator();
        while (it.hasNext()) {
            ((Map) map.getOrDefault((com.android.tools.r8.graph.M2) it.next(), Collections.EMPTY_MAP)).forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    ((Set) Map.this.computeIfAbsent((com.android.tools.r8.graph.F2) obj, new Function() {
                        @Override
                        public final Object apply(Object obj3) {
                            Set c10;
                            c10 = AbstractC5513Ll0.c();
                            return c10;
                        }
                    })).addAll((Set) obj2);
                }
            });
        }
        if (e02.isInterface()) {
            for (C4516j1 c4516j1 : e02.i(new com.android.tools.r8.graph.F7())) {
                ((Set) hashMap.computeIfAbsent(c4516j1.Z0(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Set c10;
                        c10 = AbstractC5513Ll0.c();
                        return c10;
                    }
                })).add(c4516j1.getReference());
            }
        }
        hashMap.o().removeAll((Collection) map2.getOrDefault(e02.getType(), C5058Dq.f39660c));
        if (hashMap.isEmpty()) {
            return;
        }
        map.put(e02.getType(), hashMap);
    }

    public final Map a(Collection collection, IdentityHashMap identityHashMap, final LinkedList linkedList, final C4387c4 c4387c4) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC9907vK.c(Collection.this, new V60() {
                    @Override
                    public final boolean apply(Object obj2) {
                        return ((AA) obj2).i();
                    }
                }).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        r2.forEach(new Consumer() {
                            @Override
                            public final void accept(Object obj3) {
                                IdentityHashMap.this.put((com.android.tools.r8.graph.H2) obj3, r2);
                            }
                        });
                    }
                });
            }
        };
        boolean z10 = TU.f44487a;
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        consumer.accept(identityHashMap2);
        final Map a10 = TU.a((Map) identityHashMap, new HashMap(), new Function() {
            @Override
            public final Object apply(Object obj) {
                Map a11;
                a11 = TU.a((Map) obj, new HashMap(), new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return C4875Al0.a((Set) obj2);
                    }
                });
                return a11;
            }
        });
        new com.android.tools.r8.graph.D(this.f45469b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return WZ.a(C4387c4.this, identityHashMap2, (com.android.tools.r8.graph.H2) obj);
            }
        }, 4).a(collection, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                WZ.a(Map.this, identityHashMap2, (com.android.tools.r8.graph.H2) obj);
            }
        });
        ((HashMap) a10).o().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return WZ.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
        return a10;
    }

    public static Iterable a(C4387c4 c4387c4, Map map, com.android.tools.r8.graph.H2 h22) {
        Set c10 = AbstractC5513Ll0.c();
        for (com.android.tools.r8.graph.H2 h23 : (List) c4387c4.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)) {
            Iterable iterable = (Iterable) map.get(h23);
            if (iterable != null) {
                Objects.requireNonNull(c10);
                iterable.forEach(new P01(c10));
            } else {
                c10.add(h23);
            }
        }
        return c10;
    }

    public static void a(Map map, Map map2, com.android.tools.r8.graph.H2 h22) {
        Map map3 = (Map) map.getOrDefault(h22.getType(), Collections.EMPTY_MAP);
        Iterator it = ((Iterable) map2.getOrDefault(h22, C9073qK.b(h22))).iterator();
        while (it.hasNext()) {
            Iterator it2 = ((com.android.tools.r8.graph.H2) it.next()).z0().iterator();
            while (it2.hasNext()) {
                final Map map4 = (Map) map.computeIfAbsent((com.android.tools.r8.graph.M2) it2.next(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return WZ.a((com.android.tools.r8.graph.M2) obj);
                    }
                });
                map3.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        ((Set) Map.this.computeIfAbsent((com.android.tools.r8.graph.F2) obj, new Function() {
                            @Override
                            public final Object apply(Object obj3) {
                                Set c10;
                                c10 = AbstractC5513Ll0.c();
                                return c10;
                            }
                        })).addAll((Set) obj2);
                    }
                });
            }
        }
    }

    public static Map a(com.android.tools.r8.graph.M2 m22) {
        return new HashMap();
    }
}
