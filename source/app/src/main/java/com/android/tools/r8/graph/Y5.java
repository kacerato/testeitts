package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.V60;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

public class Y5 {

    public static final C7119ef0 f36986e;

    public static final boolean f36987f = true;

    public final IdentityHashMap f36988a;

    public final ConcurrentHashMap f36989b;

    public final InterfaceC4403d1 f36990c;

    public final C4724u1 f36991d;

    static {
        int i10 = QC.f43505c;
        f36986e = C7119ef0.f47742j;
    }

    public Y5(ConcurrentHashMap concurrentHashMap, IdentityHashMap identityHashMap, InterfaceC4403d1 interfaceC4403d1) {
        this.f36989b = concurrentHashMap;
        this.f36988a = identityHashMap;
        this.f36990c = interfaceC4403d1;
        this.f36991d = interfaceC4403d1.b();
    }

    public static Y5 a(C4798y<? extends C4514j> c4798y) {
        C4514j f10 = c4798y.f();
        C4462g3 a10 = f10.a().a();
        C6057Ux b10 = AbstractC6114Vx.b(a10.f37229k, a10.f37230l, a10.k());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        a(b10, identityHashMap, concurrentHashMap, f10);
        return new Y5(concurrentHashMap, identityHashMap, f10);
    }

    public static void b(Map map, Map map2, M2 m22, E0 e02, InterfaceC4403d1 interfaceC4403d1) {
        if (m22 == null || !((Set) map.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Y5.f((M2) obj);
            }
        })).add(e02.f36245e)) {
            return;
        }
        a(map, map2, m22, e02, interfaceC4403d1);
    }

    public static Set f(M2 m22) {
        return new HashSet();
    }

    public final boolean c(M2 m22) {
        return a(m22, this.f36989b).b();
    }

    public final boolean d(M2 m22) {
        return !a(m22, this.f36989b).b();
    }

    public final boolean e(M2 m22) {
        return a(m22, this.f36989b).b();
    }

    public Set<M2> g(M2 m22) {
        if (!f36987f && !m22.I0()) {
            throw new AssertionError();
        }
        Set<M2> set = (Set) this.f36988a.get(m22);
        return set == null ? C7119ef0.f47742j : set;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.AbstractCollection, java.util.Set] */
    public final Set b(M2 m22) {
        return a(m22, this.f36989b).f36965c;
    }

    public final Iterable a(M2 m22) {
        X5 a10 = a(m22, this.f36989b);
        if (!f36987f && a10.f36964b == -1) {
            throw new AssertionError();
        }
        int i10 = a10.f36964b;
        if (i10 == -2) {
            return AbstractC9907vK.c(a10.f36965c, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return Y5.this.c((M2) obj);
                }
            });
        }
        if (i10 == 0) {
            return AbstractC9907vK.c(a10.f36965c, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return Y5.this.d((M2) obj);
                }
            });
        }
        return a10.f36965c;
    }

    public static X5 a(M2 m22, Map map) {
        if (f36987f || m22 != null) {
            return (X5) map.computeIfAbsent(m22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return new X5((M2) obj);
                }
            });
        }
        throw new AssertionError();
    }

    public static void a(final Map map, final Map map2, final M2 m22, final E0 e02, final InterfaceC4403d1 interfaceC4403d1) {
        E0 a10 = interfaceC4403d1.a(m22);
        final X5 a11 = a(m22, map2);
        if (a10 != null) {
            a10.b(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    Y5.a(Map.this, map2, e02, interfaceC4403d1, m22, a11, (M2) obj, (Boolean) obj2);
                }
            });
            if (a10.isInterface()) {
                a11.a(-2);
                return;
            }
            return;
        }
        M2 m23 = interfaceC4403d1.b().f38068i2;
        if (m22 != m23) {
            X5 a12 = a(m23, map2);
            if (!X5.f36962d && a12.f36964b == -1) {
                throw new AssertionError();
            }
            a12.a();
            a12.f36965c.add(a11.f36963a);
            a11.a(a12.f36964b + 1);
        }
    }

    public static void a(Map map, Map map2, E0 e02, InterfaceC4403d1 interfaceC4403d1, M2 m22, X5 x52, M2 m23, Boolean bool) {
        b(map, map2, m23, e02, interfaceC4403d1);
        X5 a10 = a(m23, map2);
        if (bool.booleanValue()) {
            a10.a(-2);
            a10.a();
            a10.f36965c.add(m22);
        } else {
            if (!X5.f36962d && a10.f36964b == -1) {
                throw new AssertionError();
            }
            a10.a();
            a10.f36965c.add(x52.f36963a);
            x52.a(a10.f36964b + 1);
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.AbstractCollection, java.util.Set] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.AbstractCollection, java.util.Set] */
    public static void a(Iterable iterable, IdentityHashMap identityHashMap, ConcurrentHashMap concurrentHashMap, InterfaceC4403d1 interfaceC4403d1) {
        M2 m22;
        a(interfaceC4403d1.b().f38068i2, concurrentHashMap).a(0);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            E0 e02 = (E0) it.next();
            a(identityHashMap, concurrentHashMap, e02.f36245e, e02, interfaceC4403d1);
        }
        identityHashMap.replaceAll(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Set a10;
                a10 = QC.a((Set) obj2);
                return a10;
            }
        });
        if (f36987f) {
            return;
        }
        Set c10 = AbstractC5513Ll0.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        M2 m23 = interfaceC4403d1.b().f38068i2;
        arrayDeque.add(m23);
        while (!arrayDeque.isEmpty()) {
            M2 m24 = (M2) arrayDeque.pop();
            E0 a10 = interfaceC4403d1.a(m24);
            if (a10 == null) {
                m22 = m24 == m23 ? null : m23;
            } else {
                m22 = a10.f36247g;
            }
            boolean z10 = f36987f;
            if (!z10 && c10.contains(m24)) {
                throw new AssertionError();
            }
            c10.add(m24);
            X5 a11 = a(m24, concurrentHashMap);
            if (m22 == null) {
                if (!z10 && a11.f36964b != 0) {
                    throw new AssertionError();
                }
            } else {
                X5 a12 = a(m22, concurrentHashMap);
                if (!z10) {
                    int i10 = a12.f36964b;
                    int i11 = a11.f36964b;
                    if (i10 != i11 - 1 && (i10 != 0 || i11 != -2)) {
                        throw new AssertionError();
                    }
                }
                if (!z10 && !a12.f36965c.contains(m24)) {
                    throw new AssertionError();
                }
            }
            if (a11.f36964b != -2) {
                arrayDeque.addAll(a11.f36965c);
            } else if (a10 != null) {
                for (M2 m25 : a10.f36248h.f36675b) {
                    X5 a13 = a(m25, concurrentHashMap);
                    boolean z11 = f36987f;
                    if (!z11 && !a13.f36965c.contains(m24)) {
                        throw new AssertionError();
                    }
                    if (!z11 && a13.f36964b != -2) {
                        throw new AssertionError();
                    }
                }
            } else {
                continue;
            }
        }
    }

    public final void a(M2 m22, Consumer consumer) {
        a(m22).forEach(consumer);
    }

    public final void a(Consumer consumer) {
        AbstractC9907vK.c(a(this.f36991d.f38068i2, this.f36989b).f36965c, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return Y5.this.e((M2) obj);
            }
        }).forEach(consumer);
    }

    public final List a() {
        final ArrayList arrayList = new ArrayList();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Y5.this.a(arrayList, (M2) obj);
            }
        });
        return AbstractC4780x0.a(arrayList);
    }

    public final void a(final List list, M2 m22) {
        InterfaceC4364b0 f10 = this.f36990c.f(m22);
        Objects.requireNonNull(list);
        f10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.add((E0) obj);
            }
        });
    }
}
