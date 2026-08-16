package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class D implements Iterator<Byte>, Nf.a {
    @NotNull
    public final Byte a() {
        return Byte.valueOf(y());
    }

    @Override
    public Byte next() {
        return Byte.valueOf(y());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract byte y();
}
