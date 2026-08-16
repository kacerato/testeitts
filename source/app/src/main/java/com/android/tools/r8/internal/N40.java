package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.Function;

public final class N40 {

    public static final boolean f42490d = true;

    public AbstractC5308Hz f42492b;

    public final ConcurrentHashMap f42491a = new ConcurrentHashMap();

    public ConcurrentHashMap f42493c = new ConcurrentHashMap();

    public N40(AbstractC5308Hz abstractC5308Hz) {
        this.f42492b = abstractC5308Hz;
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, ArrayList arrayList) {
        if (!f42490d && c4798y.v() != this.f42492b) {
            throw new AssertionError();
        }
        if (arrayList.isEmpty()) {
            this.f42493c.remove(h52.getReference());
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.f42493c;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            arrayList2.add((W40) this.f42491a.computeIfAbsent((W40) obj, Function.identity()));
        }
        concurrentHashMap.put(reference, arrayList2);
    }

    public final void a(final AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this.f42492b) {
            return;
        }
        final ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(this.f42493c.size());
        this.f42493c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N40.this.a(abstractC5308Hz, concurrentHashMap, (com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        });
        this.f42493c = concurrentHashMap;
        this.f42492b = abstractC5308Hz;
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, Map map, com.android.tools.r8.graph.A2 a22, List list) {
        com.android.tools.r8.graph.A2 d10 = abstractC5308Hz.d(this.f42492b, a22);
        if (!f42490d && map.containsKey(d10)) {
            throw new AssertionError();
        }
        List a10 = a(list, abstractC5308Hz);
        if (a10.isEmpty()) {
            return;
        }
        map.put(d10, a10);
    }

    public final List a(List list, final AbstractC5308Hz abstractC5308Hz) {
        if (f42490d || abstractC5308Hz != this.f42492b) {
            return AT.a(list, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return N40.a(AbstractC5308Hz.this, (W40) obj);
                }
            }, list);
        }
        throw new AssertionError();
    }

    public final HashMap a(final C4798y c4798y) {
        final HashMap hashMap = new HashMap();
        this.f42493c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N40.this.a(c4798y, hashMap, (com.android.tools.r8.graph.A2) obj, (List) obj2);
            }
        });
        return hashMap;
    }

    public final void a(C4798y c4798y, Map map, com.android.tools.r8.graph.A2 a22, List list) {
        com.android.tools.r8.graph.A2 d10 = c4798y.v().d(this.f42492b, a22);
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(d10.s0()));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(d10) : null;
        if (e10 == null) {
            if (!f42490d) {
                throw new AssertionError();
            }
        } else {
            if (!f42490d && e10.A().w()) {
                throw new AssertionError();
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((List) map.computeIfAbsent((W40) it.next(), TU.a(new com.android.tools.r8.graph.Uc()))).add(e10);
            }
        }
    }

    public static W40 a(AbstractC5308Hz abstractC5308Hz, W40 w40) {
        if (w40.a(abstractC5308Hz)) {
            return null;
        }
        return w40;
    }
}
