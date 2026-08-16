package pf;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

public final class C14970e0<T> implements Iterable<C14968d0<? extends T>>, Nf.a {

    @NotNull
    public final Mf.a<Iterator<T>> f103852b;

    /* JADX WARN: Multi-variable type inference failed */
    public C14970e0(@NotNull Mf.a<? extends Iterator<? extends T>> iteratorFactory) {
        kotlin.jvm.internal.M.p(iteratorFactory, "iteratorFactory");
        this.f103852b = iteratorFactory;
    }

    @Override
    @NotNull
    public Iterator<C14968d0<T>> iterator() {
        return new C14972f0(this.f103852b.invoke());
    }
}
