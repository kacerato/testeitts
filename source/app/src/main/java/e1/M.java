package e1;

import java.util.Iterator;

public abstract class M implements Iterator {
    @Override
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
