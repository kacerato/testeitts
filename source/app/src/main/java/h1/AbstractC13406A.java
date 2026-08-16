package h1;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import org.jspecify.annotations.NullMarked;

@NullMarked
public abstract class AbstractC13406A implements Iterator {

    @CheckForNull
    public Object f90175b;

    public int f90176c = 2;

    @CheckForNull
    public abstract Object a();

    @CheckForNull
    public final Object b() {
        this.f90176c = 3;
        return null;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f90176c;
        if (i10 == 4) {
            throw new IllegalStateException();
        }
        int i11 = i10 - 1;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            return true;
        }
        if (i11 != 2) {
            this.f90176c = 4;
            this.f90175b = a();
            if (this.f90176c != 3) {
                this.f90176c = 1;
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f90176c = 2;
        Object obj = this.f90175b;
        this.f90175b = null;
        return obj;
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
