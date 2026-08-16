package A2;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class AbstractC2274i<N, E> implements V<N, E> {

    public final Map<E, N> f245a;

    public AbstractC2274i(Map<E, N> map) {
        this.f245a = (Map) w2.H.E(map);
    }

    @Override
    public Set<N> b() {
        return a();
    }

    @Override
    public Set<N> c() {
        return a();
    }

    @Override
    public N d(E e10) {
        N n10 = this.f245a.get(e10);
        Objects.requireNonNull(n10);
        return n10;
    }

    @Override
    public Set<E> e() {
        return k();
    }

    @Override
    public N f(E e10) {
        N remove = this.f245a.remove(e10);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override
    public Set<E> g() {
        return k();
    }

    @Override
    @CheckForNull
    public N h(E e10, boolean z10) {
        if (z10) {
            return null;
        }
        return f(e10);
    }

    @Override
    public void i(E e10, N n10) {
        w2.H.g0(this.f245a.put(e10, n10) == null);
    }

    @Override
    public void j(E e10, N n10, boolean z10) {
        if (z10) {
            return;
        }
        i(e10, n10);
    }

    @Override
    public Set<E> k() {
        return Collections.unmodifiableSet(this.f245a.o());
    }
}
