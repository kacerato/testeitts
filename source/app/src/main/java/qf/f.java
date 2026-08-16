package qf;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14978j;

public final class f<E> extends AbstractC14978j<E> implements Set<E>, Nf.h {

    @NotNull
    public final d<E, ?> f107889b;

    public f(@NotNull d<E, ?> backing) {
        M.p(backing, "backing");
        this.f107889b = backing;
    }

    @Override
    public int a() {
        return this.f107889b.size();
    }

    @Override
    public boolean add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        M.p(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        this.f107889b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f107889b.containsKey(obj);
    }

    @Override
    public boolean isEmpty() {
        return this.f107889b.isEmpty();
    }

    @Override
    @NotNull
    public Iterator<E> iterator() {
        return this.f107889b.I();
    }

    @Override
    public boolean remove(Object obj) {
        return this.f107889b.T(obj);
    }

    @Override
    public boolean removeAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107889b.o();
        return super.removeAll(elements);
    }

    @Override
    public boolean retainAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107889b.o();
        return super.retainAll(elements);
    }
}
