package com.ardor3d.math;

import com.ardor3d.math.Poolable;
import java.util.ArrayList;
import java.util.List;

public abstract class ObjectPool<T extends Poolable> {
    private final int _maxSize;
    private final ThreadLocal<List<T>> _pool = (ThreadLocal<List<T>>) new ThreadLocal<List<T>>() {
        @Override
        public List<T> initialValue() {
            return new ArrayList(ObjectPool.this._maxSize);
        }
    };

    public ObjectPool(int i10) {
        this._maxSize = i10;
    }

    public static <T extends Poolable> ObjectPool<T> create(final Class<T> cls, int i10) {
        return (ObjectPool<T>) new ObjectPool<T>(i10) {
            @Override
            public T newInstance() {
                try {
                    return (T) cls.newInstance();
                } catch (Exception e10) {
                    throw new RuntimeException(e10);
                }
            }
        };
    }

    public final T fetch() {
        List<T> list = this._pool.get();
        return list.isEmpty() ? newInstance() : list.remove(list.size() - 1);
    }

    public abstract T newInstance();

    public final void release(T t10) {
        if (t10 == null) {
            throw new RuntimeException("Should not release null objects into ObjectPool.");
        }
        List<T> list = this._pool.get();
        if (list.size() < this._maxSize) {
            list.add(t10);
        }
    }
}
