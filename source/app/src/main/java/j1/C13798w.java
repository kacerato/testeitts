package j1;

import java.util.NoSuchElementException;

public final class C13798w extends AbstractC13776A {

    public boolean f92541b;

    public final Object f92542c;

    public C13798w(Object obj) {
        this.f92542c = obj;
    }

    @Override
    public final boolean hasNext() {
        return !this.f92541b;
    }

    @Override
    public final Object next() {
        if (this.f92541b) {
            throw new NoSuchElementException();
        }
        this.f92541b = true;
        return this.f92542c;
    }
}
