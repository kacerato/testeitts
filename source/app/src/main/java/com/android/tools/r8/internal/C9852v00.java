package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.function.Consumer;

public final class C9852v00 extends AbstractC7674hx0 {

    public static final boolean f52998b = true;

    @Override
    public final boolean a(C8340lx0 c8340lx0, Object obj) {
        Map map = (Map) obj;
        if (!map.containsKey(c8340lx0.f50155c)) {
            return true;
        }
        C8340lx0 c8340lx02 = (C8340lx0) map.remove(c8340lx0.f50154b);
        if (f52998b || c8340lx02 == c8340lx0) {
            return false;
        }
        throw new AssertionError();
    }

    @Override
    public final IdentityHashMap a(final LinkedList linkedList) {
        return TU.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9852v00.a(Collection.this, (IdentityHashMap) obj);
            }
        });
    }

    @Override
    public final String f() {
        return "NoNestedMergingPolicy";
    }

    public static void a(Collection collection, IdentityHashMap identityHashMap) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            C8340lx0 c8340lx0 = (C8340lx0) it.next();
            identityHashMap.put(c8340lx0.f50154b, c8340lx0);
        }
    }
}
