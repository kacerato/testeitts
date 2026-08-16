package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;

public final class CB implements Set {

    public final IdentityHashMap f39152b = new IdentityHashMap();

    public final Function f39153c;

    public CB(Function function) {
        this.f39153c = function;
    }

    @Override
    public final boolean add(Object obj) {
        return this.f39152b.put(this.f39153c.apply(obj), obj) == null;
    }

    @Override
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= add(it.next());
        }
        return z10;
    }

    @Override
    public final void clear() {
        this.f39152b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39152b.containsKey(this.f39153c.apply(obj));
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f39152b.values().containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return this.f39152b.isEmpty();
    }

    @Override
    public final Iterator iterator() {
        return this.f39152b.values().iterator();
    }

    @Override
    public final boolean remove(Object obj) {
        return this.f39152b.remove(this.f39153c.apply(obj)) != null;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= remove(it.next());
        }
        return z10;
    }

    @Override
    public final boolean retainAll(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (this.f39152b.containsKey(this.f39153c.apply(obj))) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() >= this.f39152b.size()) {
            return false;
        }
        this.f39152b.clear();
        addAll(arrayList);
        return true;
    }

    @Override
    public final int size() {
        return this.f39152b.size();
    }

    @Override
    public final Object[] toArray() {
        return this.f39152b.values().toArray();
    }

    public static CB a() {
        return new CB(new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.J2 reference;
                reference = ((com.android.tools.r8.graph.E5) obj).getContext().getReference();
                return reference;
            }
        });
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        return this.f39152b.values().toArray(objArr);
    }
}
