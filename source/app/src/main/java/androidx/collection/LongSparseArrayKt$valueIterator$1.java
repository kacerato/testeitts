package androidx.collection;

import Nf.a;
import java.util.Iterator;

public final class LongSparseArrayKt$valueIterator$1<T> implements Iterator<T>, a {
    final LongSparseArray $this_valueIterator;
    private int index;

    public LongSparseArrayKt$valueIterator$1(LongSparseArray<T> longSparseArray) {
        this.$this_valueIterator = longSparseArray;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }

    @Override
    public T next() {
        LongSparseArray longSparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return (T) longSparseArray.valueAt(i10);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }
}
