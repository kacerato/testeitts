package Wd;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class I<V> implements Zd.V, Iterator<V> {

    public final b0<V> f27459b;

    public final H f27460c;

    public int f27461d;

    public int f27462e;

    public I(b0<V> b0Var) {
        this.f27460c = b0Var;
        this.f27461d = b0Var.size();
        this.f27462e = b0Var.Ye();
        this.f27459b = b0Var;
    }

    @Override
    public boolean hasNext() {
        return nextIndex() >= 0;
    }

    public final void j() {
        int nextIndex = nextIndex();
        this.f27462e = nextIndex;
        if (nextIndex < 0) {
            throw new NoSuchElementException();
        }
    }

    public abstract V k(int i10);

    @Override
    public V next() {
        j();
        return k(this.f27462e);
    }

    public final int nextIndex() {
        int i10;
        Object obj;
        if (this.f27461d != this.f27460c.size()) {
            throw new ConcurrentModificationException();
        }
        Object[] objArr = this.f27459b.f27557l;
        int i11 = this.f27462e;
        while (true) {
            i10 = i11 - 1;
            if (i11 <= 0 || !((obj = objArr[i10]) == b0.f27556p || obj == b0.f27555o)) {
                break;
            }
            i11 = i10;
        }
        return i10;
    }

    @Override
    public void remove() {
        if (this.f27461d != this.f27460c.size()) {
            throw new ConcurrentModificationException();
        }
        try {
            this.f27460c.kf();
            this.f27460c.hf(this.f27462e);
            this.f27460c.ff(false);
            this.f27461d--;
        } catch (Throwable th2) {
            this.f27460c.ff(false);
            throw th2;
        }
    }
}
