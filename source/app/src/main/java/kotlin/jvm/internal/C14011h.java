package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

public final class C14011h<T> implements Iterator<T>, Nf.a {

    @NotNull
    public final T[] f95739b;

    public int f95740c;

    public C14011h(@NotNull T[] array) {
        M.p(array, "array");
        this.f95739b = array;
    }

    @NotNull
    public final T[] a() {
        return this.f95739b;
    }

    @Override
    public boolean hasNext() {
        return this.f95740c < this.f95739b.length;
    }

    @Override
    public T next() {
        try {
            T[] tArr = this.f95739b;
            int i10 = this.f95740c;
            this.f95740c = i10 + 1;
            return tArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f95740c--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
