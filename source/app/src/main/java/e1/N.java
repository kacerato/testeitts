package e1;

import java.util.ListIterator;

public abstract class N extends M implements ListIterator {
    @Override
    @Deprecated
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Deprecated
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
