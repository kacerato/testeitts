package com.google.common.collect;

import java.util.NoSuchElementException;

@X
@v2.b
public abstract class AbstractC12499b<E> extends f3<E> {

    public final int f66445b;

    public int f66446c;

    public AbstractC12499b(int i10) {
        this(i10, 0);
    }

    @InterfaceC12518f2
    public abstract E a(int i10);

    @Override
    public final boolean hasNext() {
        return this.f66446c < this.f66445b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f66446c > 0;
    }

    @Override
    @InterfaceC12518f2
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f66446c;
        this.f66446c = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f66446c;
    }

    @Override
    @InterfaceC12518f2
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f66446c - 1;
        this.f66446c = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f66446c - 1;
    }

    public AbstractC12499b(int i10, int i11) {
        w2.H.d0(i11, i10);
        this.f66445b = i10;
        this.f66446c = i11;
    }
}
