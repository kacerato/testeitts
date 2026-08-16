package h1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;
import org.jspecify.annotations.NullMarked;

@NullMarked
public abstract class AbstractC13410d extends o {

    public final int f90194b;

    public int f90195c;

    public AbstractC13410d(int i10, int i11) {
        J.b(i11, i10, FirebaseAnalytics.d.f67690b0);
        this.f90194b = i10;
        this.f90195c = i11;
    }

    public abstract Object a(int i10);

    @Override
    public final boolean hasNext() {
        return this.f90195c < this.f90194b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f90195c > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f90195c;
        this.f90195c = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f90195c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f90195c - 1;
        this.f90195c = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f90195c - 1;
    }
}
