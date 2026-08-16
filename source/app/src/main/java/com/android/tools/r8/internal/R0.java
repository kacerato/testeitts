package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;

public class R0 extends AbstractCollection {

    public final A0 f43773b;

    public R0(A0 a02) {
        this.f43773b = a02;
    }

    @Override
    public final void clear() {
        this.f43773b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            A0 a02 = this.f43773b;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) a02.b().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return new C8683o0(this.f43773b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            A0 a02 = this.f43773b;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) a02.b().get(key);
            if (collection != null && collection.remove(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f43773b.f38498g;
    }

    @Override
    public final Spliterator spliterator() {
        return this.f43773b.g();
    }
}
