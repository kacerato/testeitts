package A2;

import com.google.common.collect.D1;
import com.google.common.collect.D2;
import com.google.common.collect.E1;
import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public abstract class AbstractC2270e<N, E> implements V<N, E> {

    public final Map<E, N> f206a;

    public final Map<E, N> f207b;

    public int f208c;

    public class a extends AbstractSet<E> {
        public a() {
        }

        @Override
        public e3<E> iterator() {
            return E1.f0((AbstractC2270e.this.f208c == 0 ? D1.f(AbstractC2270e.this.f206a.o(), AbstractC2270e.this.f207b.o()) : D2.N(AbstractC2270e.this.f206a.o(), AbstractC2270e.this.f207b.o())).iterator());
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC2270e.this.f206a.containsKey(obj) || AbstractC2270e.this.f207b.containsKey(obj);
        }

        @Override
        public int size() {
            return E2.f.t(AbstractC2270e.this.f206a.size(), AbstractC2270e.this.f207b.size() - AbstractC2270e.this.f208c);
        }
    }

    public AbstractC2270e(Map<E, N> map, Map<E, N> map2, int i10) {
        this.f206a = (Map) w2.H.E(map);
        this.f207b = (Map) w2.H.E(map2);
        this.f208c = D.b(i10);
        w2.H.g0(i10 <= map.size() && i10 <= map2.size());
    }

    @Override
    public Set<N> a() {
        return D2.N(c(), b());
    }

    @Override
    public N d(E e10) {
        N n10 = this.f207b.get(e10);
        Objects.requireNonNull(n10);
        return n10;
    }

    @Override
    public Set<E> e() {
        return Collections.unmodifiableSet(this.f206a.o());
    }

    @Override
    public N f(E e10) {
        N remove = this.f207b.remove(e10);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override
    public Set<E> g() {
        return Collections.unmodifiableSet(this.f207b.o());
    }

    @Override
    public N h(E e10, boolean z10) {
        if (z10) {
            int i10 = this.f208c - 1;
            this.f208c = i10;
            D.b(i10);
        }
        N remove = this.f206a.remove(e10);
        Objects.requireNonNull(remove);
        return remove;
    }

    @Override
    public void i(E e10, N n10) {
        w2.H.E(e10);
        w2.H.E(n10);
        w2.H.g0(this.f207b.put(e10, n10) == null);
    }

    @Override
    public void j(E e10, N n10, boolean z10) {
        w2.H.E(e10);
        w2.H.E(n10);
        if (z10) {
            int i10 = this.f208c + 1;
            this.f208c = i10;
            D.d(i10);
        }
        w2.H.g0(this.f206a.put(e10, n10) == null);
    }

    @Override
    public Set<E> k() {
        return new a();
    }
}
