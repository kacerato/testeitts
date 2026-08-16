package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C14972f0<T> implements Iterator<C14968d0<? extends T>>, Nf.a {

    @NotNull
    public final Iterator<T> f103860b;

    public int f103861c;

    /* JADX WARN: Multi-variable type inference failed */
    public C14972f0(@NotNull Iterator<? extends T> iterator) {
        kotlin.jvm.internal.M.p(iterator, "iterator");
        this.f103860b = iterator;
    }

    @Override
    @NotNull
    public final C14968d0<T> next() {
        int i10 = this.f103861c;
        this.f103861c = i10 + 1;
        if (i10 < 0) {
            H.b0();
        }
        return new C14968d0<>(i10, this.f103860b.next());
    }

    @Override
    public final boolean hasNext() {
        return this.f103860b.hasNext();
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
