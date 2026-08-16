package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public abstract class E implements Iterator<Character>, Nf.a {
    @NotNull
    public final Character a() {
        return Character.valueOf(b());
    }

    public abstract char b();

    @Override
    public Character next() {
        return Character.valueOf(b());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
