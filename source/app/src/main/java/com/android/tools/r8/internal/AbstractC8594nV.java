package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public abstract class AbstractC8594nV extends AbstractC5397Jl0 {
    public abstract Map a();

    @Override
    public final void clear() {
        a().clear();
    }

    @Override
    public boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object a10 = AbstractC9595tV.a(a(), key);
            if (V30.a(a10, entry.getValue()) && (a10 != null || a().containsKey(key))) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isEmpty() {
        return a().isEmpty();
    }

    @Override
    public boolean remove(Object obj) {
        if (contains(obj) && (obj instanceof Map.Entry)) {
            return a().o().remove(((Map.Entry) obj).getKey());
        }
        return false;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        try {
            collection.getClass();
            return AbstractC5513Ll0.a(this, collection);
        } catch (UnsupportedOperationException unused) {
            Iterator it = collection.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                z10 |= remove(it.next());
            }
            return z10;
        }
    }

    @Override
    public final boolean retainAll(Collection collection) {
        try {
            collection.getClass();
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            HashSet hashSet = new HashSet(AbstractC9595tV.a(collection.size()));
            for (Object obj : collection) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    hashSet.add(((Map.Entry) obj).getKey());
                }
            }
            return a().o().retainAll(hashSet);
        }
    }

    @Override
    public final int size() {
        return a().size();
    }
}
