package org.apache.commons.lang3.concurrent;

import androidx.lifecycle.c;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AtomicSafeInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<AtomicSafeInitializer<T>> factory = new AtomicReference<>();
    private final AtomicReference<T> reference = new AtomicReference<>();

    @Override
    public final T get() throws ConcurrentException {
        while (true) {
            T t10 = this.reference.get();
            if (t10 != null) {
                return t10;
            }
            if (c.a(this.factory, null, this)) {
                this.reference.set(initialize());
            }
        }
    }

    public abstract T initialize() throws ConcurrentException;
}
