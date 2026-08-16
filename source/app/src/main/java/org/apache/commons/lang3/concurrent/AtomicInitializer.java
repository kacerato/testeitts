package org.apache.commons.lang3.concurrent;

import androidx.lifecycle.c;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> reference = new AtomicReference<>();

    @Override
    public T get() throws ConcurrentException {
        T t10 = this.reference.get();
        if (t10 != null) {
            return t10;
        }
        T initialize = initialize();
        return !c.a(this.reference, null, initialize) ? this.reference.get() : initialize;
    }

    public abstract T initialize() throws ConcurrentException;
}
