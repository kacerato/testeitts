package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class C implements Iterator<Boolean>, Nf.a {
    @Override
    public Boolean next() {
        return Boolean.valueOf(nextBoolean());
    }

    public abstract boolean nextBoolean();

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NotNull
    public final Boolean next() {
        return Boolean.valueOf(nextBoolean());
    }
}
