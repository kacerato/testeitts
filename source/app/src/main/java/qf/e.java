package qf;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class e<K, V> extends AbstractC15098a<Map.Entry<K, V>, K, V> {

    @NotNull
    public final d<K, V> f107888b;

    public e(@NotNull d<K, V> backing) {
        M.p(backing, "backing");
        this.f107888b = backing;
    }

    @Override
    public int a() {
        return this.f107888b.size();
    }

    @Override
    public boolean addAll(@NotNull Collection<? extends Map.Entry<K, V>> elements) {
        M.p(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean c(@NotNull Map.Entry<? extends K, ? extends V> element) {
        M.p(element, "element");
        return this.f107888b.r(element);
    }

    @Override
    public void clear() {
        this.f107888b.clear();
    }

    @Override
    public boolean containsAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        return this.f107888b.q(elements);
    }

    @Override
    public boolean d(@NotNull Map.Entry<K, V> element) {
        M.p(element, "element");
        return this.f107888b.P(element);
    }

    @Override
    public boolean add(@NotNull Map.Entry<K, V> element) {
        M.p(element, "element");
        throw new UnsupportedOperationException();
    }

    @NotNull
    public final d<K, V> g() {
        return this.f107888b;
    }

    @Override
    public boolean isEmpty() {
        return this.f107888b.isEmpty();
    }

    @Override
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return this.f107888b.w();
    }

    @Override
    public boolean removeAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107888b.o();
        return super.removeAll(elements);
    }

    @Override
    public boolean retainAll(@NotNull Collection<?> elements) {
        M.p(elements, "elements");
        this.f107888b.o();
        return super.retainAll(elements);
    }
}
