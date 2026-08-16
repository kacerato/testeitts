package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class B0 implements Iterator<Short>, Nf.a {
    @NotNull
    public final Short a() {
        return Short.valueOf(b());
    }

    public abstract short b();

    @Override
    public Short next() {
        return Short.valueOf(b());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
