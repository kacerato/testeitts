package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

public final class C9183r0 extends AbstractC9428sV {

    public final transient HashMap f51934d;

    public final A0 f51935e;

    public C9183r0(A0 a02, HashMap hashMap) {
        this.f51935e = a02;
        this.f51934d = hashMap;
    }

    public final Map.Entry a(Map.Entry entry) {
        Object key = entry.getKey();
        A0 a02 = this.f51935e;
        Collection collection = (Collection) entry.getValue();
        Q3 q32 = (Q3) a02;
        q32.getClass();
        List list = (List) collection;
        return new ZB(key, list instanceof RandomAccess ? new C9851v0(q32, key, list, null) : new C10519z0(q32, key, list, null));
    }

    @Override
    public final void clear() {
        HashMap hashMap = this.f51934d;
        A0 a02 = this.f51935e;
        if (hashMap == a02.f38497f) {
            a02.clear();
            return;
        }
        C9017q0 c9017q0 = new C9017q0(this);
        while (c9017q0.hasNext()) {
            c9017q0.next();
            c9017q0.remove();
        }
    }

    @Override
    public final boolean containsKey(Object obj) {
        HashMap hashMap = this.f51934d;
        hashMap.getClass();
        try {
            return hashMap.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override
    public final Set e() {
        return new C8850p0(this);
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj || this.f51934d.equals(obj);
    }

    @Override
    public final Object get(Object obj) {
        Collection collection = (Collection) AbstractC9595tV.a(this.f51934d, obj);
        if (collection == null) {
            return null;
        }
        Q3 q32 = (Q3) this.f51935e;
        q32.getClass();
        List list = (List) collection;
        return list instanceof RandomAccess ? new C9851v0(q32, obj, list, null) : new C10519z0(q32, obj, list, null);
    }

    @Override
    public final int hashCode() {
        return this.f51934d.hashCode();
    }

    @Override
    public final Set o() {
        return this.f51935e.keySet();
    }

    @Override
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.f51934d.remove(obj);
        if (collection == null) {
            return null;
        }
        Q3 q32 = (Q3) this.f51935e;
        q32.getClass();
        ArrayList arrayList = new ArrayList(q32.f43445h);
        arrayList.addAll(collection);
        this.f51935e.f38498g -= collection.size();
        collection.clear();
        return arrayList;
    }

    @Override
    public final int size() {
        return this.f51934d.size();
    }

    @Override
    public final String toString() {
        return this.f51934d.toString();
    }
}
