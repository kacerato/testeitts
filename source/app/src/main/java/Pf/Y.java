package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class Y implements Iterator<Float>, Nf.a {
    @NotNull
    public final Float a() {
        return Float.valueOf(b());
    }

    public abstract float b();

    @Override
    public Float next() {
        return Float.valueOf(b());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
