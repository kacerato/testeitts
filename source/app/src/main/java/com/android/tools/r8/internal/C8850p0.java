package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;

public final class C8850p0 extends AbstractC8594nV {

    public final C9183r0 f51404b;

    public C8850p0(C9183r0 c9183r0) {
        this.f51404b = c9183r0;
    }

    @Override
    public final Map a() {
        return this.f51404b;
    }

    @Override
    public final boolean contains(Object obj) {
        Set entrySet = this.f51404b.f51934d.entrySet();
        entrySet.getClass();
        try {
            return entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override
    public final Iterator iterator() {
        return new C9017q0(this.f51404b);
    }

    @Override
    public final boolean remove(Object obj) {
        boolean z10;
        Object obj2;
        Set entrySet = this.f51404b.f51934d.entrySet();
        entrySet.getClass();
        try {
            z10 = entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        A0 a02 = this.f51404b.f51935e;
        Object key = entry.getKey();
        HashMap hashMap = a02.f38497f;
        hashMap.getClass();
        try {
            obj2 = hashMap.remove(key);
        } catch (ClassCastException | NullPointerException unused2) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return true;
        }
        int size = collection.size();
        collection.clear();
        a02.f38498g -= size;
        return true;
    }

    @Override
    public final Spliterator spliterator() {
        Spliterator spliterator = this.f51404b.f51934d.entrySet().spliterator();
        final C9183r0 c9183r0 = this.f51404b;
        return AbstractC5901Se.a(spliterator, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9183r0.this.a((Map.Entry) obj);
            }
        });
    }
}
