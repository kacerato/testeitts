package org.apache.commons.lang3.concurrent;

public abstract class LazyInitializer<T> implements ConcurrentInitializer<T> {
    private static final Object NO_INIT = new Object();
    private volatile T object = (T) NO_INIT;

    @Override
    public T get() throws ConcurrentException {
        T t10 = this.object;
        Object obj = NO_INIT;
        if (t10 == obj) {
            synchronized (this) {
                try {
                    t10 = this.object;
                    if (t10 == obj) {
                        t10 = initialize();
                        this.object = t10;
                    }
                } finally {
                }
            }
        }
        return t10;
    }

    public abstract T initialize() throws ConcurrentException;
}
