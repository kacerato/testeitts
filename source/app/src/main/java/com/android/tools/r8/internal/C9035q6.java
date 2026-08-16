package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.Set;

public final class C9035q6 extends AbstractC8868p6 implements InterfaceC7866j6, InterfaceC8033k6 {

    public static final boolean f51716e = true;

    public final IdentityHashMap f51717d = new IdentityHashMap();

    @Override
    public final Object b(Object obj) {
        Set e10 = e(obj);
        if (e10.isEmpty()) {
            return null;
        }
        return e10.size() == 1 ? e10.iterator().next() : this.f51717d.get(obj);
    }

    @Override
    public final Object c(Object obj) {
        return this.f51441c.get(obj);
    }
}
