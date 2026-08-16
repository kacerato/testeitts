package com.ardor3d.util;

import com.google.common.collect.O1;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ContextIdReference<T> extends PhantomReference<T> {
    private static final List<ContextIdReference> REFS = new LinkedList();
    private final Map<Object, Integer> _idCache;
    private int _singleContextId;

    public ContextIdReference(T t10, ReferenceQueue<? super T> referenceQueue) {
        super(t10, referenceQueue);
        if (Constants.useMultipleContexts) {
            this._idCache = new O1().g(2).l().i();
        } else {
            this._idCache = null;
        }
        REFS.add(this);
    }

    @Override
    public void clear() {
        super.clear();
        REFS.remove(this);
    }

    public boolean containsKey(Object obj) {
        if (Constants.useMultipleContexts) {
            return this._idCache.containsKey(obj);
        }
        return true;
    }

    public int get(Object obj) {
        return Constants.useMultipleContexts ? this._idCache.get(obj).intValue() : this._singleContextId;
    }

    public Set<Object> getContextObjects() {
        if (Constants.useMultipleContexts) {
            return this._idCache.o();
        }
        return null;
    }

    public void put(Object obj, int i10) {
        if (Constants.useMultipleContexts) {
            this._idCache.put(obj, Integer.valueOf(i10));
        } else {
            this._singleContextId = i10;
        }
    }

    public int remove(Object obj) {
        if (!Constants.useMultipleContexts) {
            int i10 = this._singleContextId;
            this._singleContextId = 0;
            return i10;
        }
        Integer remove = this._idCache.remove(obj);
        if (remove == null) {
            return -1;
        }
        return remove.intValue();
    }
}
