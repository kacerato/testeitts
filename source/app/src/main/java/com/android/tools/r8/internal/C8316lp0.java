package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;

public final class C8316lp0 extends AbstractC5913Sj {

    public final IdentityHashMap f50117d;

    public final IdentityHashMap f50118e;

    public final LinkedHashSet f50119f;

    public C8316lp0(IdentityHashMap identityHashMap, IdentityHashMap identityHashMap2, LinkedHashSet linkedHashSet) {
        this.f50117d = identityHashMap;
        this.f50118e = identityHashMap2;
        this.f50119f = linkedHashSet;
    }

    @Override
    public final List a(Collection collection) {
        return null;
    }

    @Override
    public final void a(C5797Qj c5797Qj, Function function) {
        Set set = (Set) this.f50117d.get((AbstractC5289Hp0) c5797Qj.f43692a);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                function.apply((AbstractC5289Hp0) this.f50118e.get((AbstractC5289Hp0) it.next()));
            }
        }
    }
}
