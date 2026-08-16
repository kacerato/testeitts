package com.ardor3d.util;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.LinkedList;
import java.util.List;

public class SimpleContextIdReference<T> extends PhantomReference<T> {
    private static final List<SimpleContextIdReference> REFS = new LinkedList();
    private final Object _glContext;
    private final int _id;

    public SimpleContextIdReference(T t10, ReferenceQueue<? super T> referenceQueue, int i10, Object obj) {
        super(t10, referenceQueue);
        REFS.add(this);
        this._id = i10;
        this._glContext = obj;
    }

    @Override
    public void clear() {
        super.clear();
        REFS.remove(this);
    }

    public Object getGlContext() {
        return this._glContext;
    }

    public int getId() {
        return this._id;
    }
}
