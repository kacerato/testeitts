package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class AbstractC14976h0 implements Iterator<Long>, Nf.a {
    @Override
    public Long next() {
        return Long.valueOf(nextLong());
    }

    public abstract long nextLong();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NotNull
    public final Long next() {
        return Long.valueOf(nextLong());
    }
}
