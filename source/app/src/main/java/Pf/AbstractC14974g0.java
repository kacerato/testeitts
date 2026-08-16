package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class AbstractC14974g0 implements Iterator<Integer>, Nf.a {
    @Override
    public Integer next() {
        return Integer.valueOf(nextInt());
    }

    public abstract int nextInt();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NotNull
    public final Integer next() {
        return Integer.valueOf(nextInt());
    }
}
