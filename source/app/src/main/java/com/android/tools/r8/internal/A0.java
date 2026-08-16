package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;

public abstract class A0 extends S0 implements Serializable {

    public final transient HashMap f38497f;

    public transient int f38498g;

    public A0(HashMap hashMap) {
        if (!hashMap.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f38497f = hashMap;
    }

    @Override
    public final Collection a() {
        Collection collection = this.f44052b;
        if (collection != null) {
            return collection;
        }
        R0 r02 = new R0(this);
        this.f44052b = r02;
        return r02;
    }

    @Override
    public final Map c() {
        return new C9183r0(this, this.f38497f);
    }

    @Override
    public final void clear() {
        Iterator it = this.f38497f.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.f38497f.clear();
        this.f38498g = 0;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return this.f38497f.containsKey(obj);
    }

    @Override
    public final Set d() {
        return new C9684u0(this, this.f38497f);
    }

    @Override
    public final LY e() {
        return new KY(this);
    }

    public final Spliterator g() {
        return AbstractC5901Se.a(this.f38497f.entrySet().spliterator(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return A0.a((Map.Entry) obj);
            }
        }, 64, this.f38498g);
    }

    @Override
    public final int size() {
        return this.f38498g;
    }

    public static Spliterator a(Map.Entry entry) {
        final Object key = entry.getKey();
        return AbstractC5901Se.a(((Collection) entry.getValue()).spliterator(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return A0.a(Object.this, obj);
            }
        });
    }

    public static Map.Entry a(Object obj, Object obj2) {
        return new ZB(obj, obj2);
    }
}
