package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class T implements Iterator<Double>, Nf.a {
    @NotNull
    public final Double a() {
        return Double.valueOf(b());
    }

    public abstract double b();

    @Override
    public Double next() {
        return Double.valueOf(b());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
