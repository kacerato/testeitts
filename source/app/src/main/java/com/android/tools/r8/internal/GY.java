package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class GY extends AbstractC8594nV {

    public final HY f40514b;

    public GY(HY hy) {
        this.f40514b = hy;
    }

    @Override
    public final Map a() {
        return this.f40514b;
    }

    public final Collection c(Object obj) {
        C10090wS c10090wS = this.f40514b.f40783d;
        c10090wS.getClass();
        return new C8755oS(c10090wS, obj);
    }

    @Override
    public final Iterator iterator() {
        Set keySet = this.f40514b.f40783d.keySet();
        return new C7594hV(keySet.iterator(), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return GY.this.c(obj);
            }
        });
    }

    @Override
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        HY hy = this.f40514b;
        hy.f40783d.keySet().remove(entry.getKey());
        return true;
    }
}
