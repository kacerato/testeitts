package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.R00;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11555d {

    public static final boolean f58239f = true;

    public final S f58240a;

    public final AbstractC8552nC f58241b;

    public final AbstractC8552nC f58242c;

    public final AbstractC8552nC f58243d;

    public final QC f58244e;

    public C11555d(S s10, AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, AbstractC8552nC abstractC8552nC3, QC qc2) {
        this.f58240a = s10;
        this.f58241b = abstractC8552nC;
        this.f58242c = abstractC8552nC2;
        this.f58243d = abstractC8552nC3;
        this.f58244e = qc2;
        if (f58239f) {
            return;
        }
        a();
    }

    public static AbstractC8552nC a(final IdentityHashMap identityHashMap, AbstractC8552nC abstractC8552nC) {
        if (identityHashMap == null) {
            return abstractC8552nC;
        }
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((List) Map.this.computeIfAbsent((M2) obj, new Function() {
                    @Override
                    public final Object apply(Object obj3) {
                        return C11555d.b((M2) obj3);
                    }
                })).addAll((List) obj2);
            }
        });
        return AbstractC8552nC.a(identityHashMap);
    }

    public static List b(M2 m22) {
        return new ArrayList();
    }

    public static Set c(M2 m22) {
        return new HashSet();
    }

    public static List d(M2 m22) {
        return new ArrayList();
    }

    public static AbstractC8552nC b(final IdentityHashMap identityHashMap, AbstractC8552nC abstractC8552nC) {
        if (identityHashMap == null) {
            return abstractC8552nC;
        }
        abstractC8552nC.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Set) Map.this.computeIfAbsent((M2) obj, new Function() {
                    @Override
                    public final Object apply(Object obj3) {
                        return C11555d.c((M2) obj3);
                    }
                })).addAll((Set) obj2);
            }
        });
        return AbstractC8552nC.a(identityHashMap);
    }

    public final void b(Consumer consumer) {
        this.f58244e.forEach(consumer);
    }

    public final void a() {
        int i10 = QC.f43505c;
        IC ic2 = new IC();
        ic2.a((Iterable) this.f58241b.keySet());
        ic2.a((Iterable) this.f58242c.keySet());
        final QC a10 = ic2.a();
        this.f58244e.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11555d.a(Set.this, (M2) obj);
            }
        });
    }

    public static void a(Set set, M2 m22) {
        if (f58239f || set.contains(m22)) {
            return;
        }
        throw new AssertionError((Object) ("Expected " + m22.j0() + " to be a synthetic"));
    }

    public final C6057Ux a(M2 m22) {
        AbstractC8552nC abstractC8552nC = this.f58242c;
        Object obj = Collections.EMPTY_LIST;
        Object obj2 = abstractC8552nC.get(m22);
        if (obj2 == null) {
            obj2 = obj;
        }
        Iterable iterable = (Iterable) obj2;
        Object obj3 = this.f58241b.get(m22);
        if (obj3 != null) {
            obj = obj3;
        }
        return AbstractC6114Vx.b(iterable, (Iterable) obj);
    }

    public final void a(final Consumer consumer) {
        this.f58241b.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((List) obj).forEach(Consumer.this);
            }
        });
        this.f58242c.values().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((List) obj).forEach(Consumer.this);
            }
        });
    }

    public final AbstractC8552nC a(Map map, R00 r00, IC ic2) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        for (InterfaceC11576k interfaceC11576k : C9073qK.b((Iterable) map.values())) {
            InterfaceC11576k a10 = interfaceC11576k.a(r00);
            if (a10 != null) {
                ((List) identityHashMap.computeIfAbsent(a10.getHolder(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C11555d.d((M2) obj);
                    }
                })).add(a10);
                if (this.f58244e.contains(interfaceC11576k.getHolder())) {
                    ic2.a(a10.getHolder());
                }
            }
        }
        return AbstractC8552nC.a(identityHashMap);
    }

    public static void a(AbstractC4780x0 abstractC4780x0, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            M2 m22 = (M2) it.next();
            if (!f58239f && abstractC4780x0.c(m22) == null) {
                throw new AssertionError((Object) ("Missing synthetic: " + ((Object) m22)));
            }
        }
    }
}
