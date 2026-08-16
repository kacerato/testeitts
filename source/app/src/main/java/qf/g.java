package qf;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.AbstractC14973g;

public final class g<V> extends AbstractC14973g<V> implements Collection<V>, Nf.b {

    @NotNull
    public final d<?, V> f107890b;

    public g(@NotNull d<?, V> backing) {
        M.p(backing, "backing");
        this.f107890b = backing;
    }

    @Override
    public int a() {
        return this.f107890b.size();
    }

    @Override
    public boolean add(V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean addAll(@NotNull Collection<? extends V> elements) {
        M.p(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @NotNull
    public final d<?, V> b() {
        return this.f107890b;
    }

    @Override
    public void clear() {
        this.f107890b.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f107890b.containsValue(obj);
    }

    @Override
    public boolean isEmpty() {
        return this.f107890b.isEmpty();
    }

    @Override
    @NotNull
    public Iterator<V> iterator() {
        return this.f107890b.W();
    }

    @Override
    public boolean remove(Object obj) {
        return this.f107890b.U(obj);
    }

    @Override
    public boolean removeAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107890b.o();
        return super.removeAll(elements);
    }

    @Override
    public boolean retainAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107890b.o();
        return super.retainAll(elements);
    }
}
