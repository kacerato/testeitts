package androidx.core.util;

import android.util.SparseArray;
import java.util.Iterator;

public final class SparseArrayKt$valueIterator$1<T> implements Iterator<T>, Nf.a {
    final SparseArray<T> $this_valueIterator;
    private int index;

    public SparseArrayKt$valueIterator$1(SparseArray<T> sparseArray) {
        this.$this_valueIterator = sparseArray;
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
        SparseArray<T> sparseArray = this.$this_valueIterator;
        int i10 = this.index;
        this.index = i10 + 1;
        return sparseArray.valueAt(i10);
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }
}
