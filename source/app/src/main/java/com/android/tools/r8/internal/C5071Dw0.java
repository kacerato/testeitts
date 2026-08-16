package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;

public final class C5071Dw0 {

    public static final boolean f39691c = true;

    public final IdentityHashMap f39692a = new IdentityHashMap();

    public final IdentityHashMap f39693b = new IdentityHashMap();

    public final void a(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        ((Set) this.f39692a.computeIfAbsent(c10340xw0, TU.a(new C8887pC0()))).add(c10340xw02);
        ((Set) this.f39693b.computeIfAbsent(c10340xw02, TU.a(new C8887pC0()))).add(c10340xw0);
    }

    public final void b(C10340xw0 c10340xw0) {
        IdentityHashMap identityHashMap = this.f39692a;
        Object obj = Collections.EMPTY_SET;
        boolean z10 = TU.f44487a;
        Object remove = identityHashMap.remove(c10340xw0);
        if (remove != null) {
            obj = remove;
        }
        for (C10340xw0 c10340xw02 : (Set) obj) {
            Set set = (Set) this.f39693b.get(c10340xw02);
            boolean remove2 = set.remove(c10340xw0);
            if (!f39691c && !remove2) {
                throw new AssertionError();
            }
            if (set.isEmpty()) {
                this.f39693b.remove(c10340xw02);
            }
        }
    }

    public final Set a(C10340xw0 c10340xw0) {
        if (!f39691c && this.f39692a.containsKey(c10340xw0)) {
            throw new AssertionError();
        }
        IdentityHashMap identityHashMap = this.f39693b;
        Object obj = Collections.EMPTY_SET;
        boolean z10 = TU.f44487a;
        Object remove = identityHashMap.remove(c10340xw0);
        if (remove != null) {
            obj = remove;
        }
        Set<C10340xw0> set = (Set) obj;
        for (C10340xw0 c10340xw02 : set) {
            Set set2 = (Set) this.f39692a.get(c10340xw02);
            boolean remove2 = set2.remove(c10340xw0);
            if (!f39691c && !remove2) {
                throw new AssertionError();
            }
            if (set2.isEmpty()) {
                this.f39692a.remove(c10340xw02);
            }
        }
        return set;
    }
}
