package androidx.collection;

import Nf.a;
import java.util.Iterator;

public final class SparseArrayKt$valueIterator$1<T> implements Iterator<T>, a {
    final SparseArrayCompat $this_valueIterator;
    private int index;

    public SparseArrayKt$valueIterator$1(SparseArrayCompat<T> sparseArrayCompat) {
        this.$this_valueIterator = sparseArrayCompat;
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
        SparseArrayCompat sparseArrayCompat = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return (T) sparseArrayCompat.valueAt(i10);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }
}
