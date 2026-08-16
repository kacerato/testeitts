package e1;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.NoSuchElementException;

public abstract class G extends N {

    public final int f84939b;

    public int f84940c;

    public G(int i10, int i11) {
        E.b(i11, i10, FirebaseAnalytics.d.f67690b0);
        this.f84939b = i10;
        this.f84940c = i11;
    }

    public abstract Object a(int i10);

    @Override
    public final boolean hasNext() {
        return this.f84940c < this.f84939b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.f84940c > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f84940c;
        this.f84940c = i10 + 1;
        return a(i10);
    }

    @Override
    public final int nextIndex() {
        return this.f84940c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f84940c - 1;
        this.f84940c = i10;
        return a(i10);
    }

    @Override
    public final int previousIndex() {
        return this.f84940c - 1;
    }
}
