package pf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.Nullable;

public abstract class AbstractC14965c<T> implements Iterator<T>, Nf.a {

    public int f103839b;

    @Nullable
    public T f103840c;

    public abstract void a();

    public final void b() {
        this.f103839b = 2;
    }

    public final void c(T t10) {
        this.f103840c = t10;
        this.f103839b = 1;
    }

    public final boolean d() {
        this.f103839b = 3;
        a();
        return this.f103839b == 1;
    }

    @Override
    public boolean hasNext() {
        int i10 = this.f103839b;
        if (i10 == 0) {
            return d();
        }
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
    }

    @Override
    public T next() {
        int i10 = this.f103839b;
        if (i10 == 1) {
            this.f103839b = 0;
            return this.f103840c;
        }
        if (i10 == 2 || !d()) {
            throw new NoSuchElementException();
        }
        this.f103839b = 0;
        return this.f103840c;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
