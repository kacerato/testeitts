package com.google.common.collect;

import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12539l<T> extends e3<T> {

    @CheckForNull
    public T f66708b;

    public AbstractC12539l(@CheckForNull T t10) {
        this.f66708b = t10;
    }

    @CheckForNull
    public abstract T a(T t10);

    @Override
    public final boolean hasNext() {
        return this.f66708b != null;
    }

    @Override
    public final T next() {
        T t10 = this.f66708b;
        if (t10 == null) {
            throw new NoSuchElementException();
        }
        this.f66708b = a(t10);
        return t10;
    }
}
