package j1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;

public abstract class AbstractC13792p extends C {

    public final int f92531b;

    public int f92532c;

    public AbstractC13792p(int i10, int i11) {
        C13790n.b(i11, i10, FirebaseAnalytics.d.f67690b0);
        this.f92531b = i10;
        this.f92532c = i11;
    }

    public abstract Object a(int i10);

    @Override
    public final boolean hasNext() {
        return this.f92532c < this.f92531b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f92532c > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f92532c;
        this.f92532c = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f92532c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f92532c - 1;
        this.f92532c = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f92532c - 1;
    }
}
