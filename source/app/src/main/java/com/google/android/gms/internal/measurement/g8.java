package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

public final class g8 {

    @v2.d
    public final TreeMap f62298a = new TreeMap();

    @v2.d
    public final TreeMap f62299b = new TreeMap();

    public static final int c(C12079h2 c12079h2, C12148p c12148p, InterfaceC12157q interfaceC12157q) {
        InterfaceC12157q i10 = c12148p.i(c12079h2, Collections.singletonList(interfaceC12157q));
        if (i10 instanceof C12094j) {
            return I2.g(i10.Q1().doubleValue());
        }
        return -1;
    }

    public final void a(String str, int i10, C12148p c12148p, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.f62299b;
        } else {
            if (!"edit".equals(str2)) {
                throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(str2)));
            }
            treeMap = this.f62298a;
        }
        if (treeMap.containsKey(Integer.valueOf(i10))) {
            i10 = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i10), c12148p);
    }

    public final void b(C12079h2 c12079h2, C12031c c12031c) {
        L4 l42 = new L4(c12031c);
        TreeMap treeMap = this.f62298a;
        for (Integer num : treeMap.o()) {
            C12022b clone = c12031c.c().clone();
            int c10 = c(c12079h2, (C12148p) treeMap.get(num), l42);
            if (c10 == 2 || c10 == -1) {
                c12031c.d(clone);
            }
        }
        TreeMap treeMap2 = this.f62299b;
        Iterator it = treeMap2.o().iterator();
        while (it.hasNext()) {
            c(c12079h2, (C12148p) treeMap2.get((Integer) it.next()), l42);
        }
    }
}
