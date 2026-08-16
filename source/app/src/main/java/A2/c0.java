package A2;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public class c0<N, V> extends AbstractC2275j<N, V> {

    public final boolean f199a;

    public final boolean f200b;

    public final C2283s<N> f201c;

    public final M<N, B<N, V>> f202d;

    public long f203e;

    public class a extends L<N> {

        public final B f204d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c0 c0Var, InterfaceC2276k interfaceC2276k, Object obj, B b10) {
            super(interfaceC2276k, obj);
            this.f204d = b10;
        }

        @Override
        public Iterator<AbstractC2285u<N>> iterator() {
            return this.f204d.g(this.f169b);
        }
    }

    public c0(AbstractC2272g<? super N> abstractC2272g) {
        this(abstractC2272g, abstractC2272g.f230c.c(abstractC2272g.f232e.g(10).intValue()), 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public V D(N n10, N n11, @CheckForNull V v10) {
        return (V) T(w2.H.E(n10), w2.H.E(n11), v10);
    }

    @CheckForNull
    public V J(AbstractC2285u<N> abstractC2285u, @CheckForNull V v10) {
        P(abstractC2285u);
        return T(abstractC2285u.h(), abstractC2285u.i(), v10);
    }

    @Override
    public long N() {
        return this.f203e;
    }

    public final B<N, V> R(N n10) {
        B<N, V> f10 = this.f202d.f(n10);
        if (f10 != null) {
            return f10;
        }
        w2.H.E(n10);
        String valueOf = String.valueOf(n10);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 38);
        sb2.append("Node ");
        sb2.append(valueOf);
        sb2.append(" is not an element of this graph.");
        throw new IllegalArgumentException(sb2.toString());
    }

    public final boolean S(@CheckForNull N n10) {
        return this.f202d.e(n10);
    }

    @CheckForNull
    public final V T(N n10, N n11, @CheckForNull V v10) {
        B<N, V> f10 = this.f202d.f(n10);
        V value = f10 == null ? null : f10.value(n11);
        return value == null ? v10 : value;
    }

    public final boolean U(N n10, N n11) {
        B<N, V> f10 = this.f202d.f(n10);
        return f10 != null && f10.b().contains(n11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable a(Object obj) {
        return a((c0<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable b(Object obj) {
        return b((c0<N, V>) obj);
    }

    @Override
    public boolean c() {
        return this.f199a;
    }

    @Override
    public Set<N> d(N n10) {
        return R(n10).a();
    }

    @Override
    public Set<N> e() {
        return this.f202d.k();
    }

    @Override
    public boolean h(AbstractC2285u<N> abstractC2285u) {
        w2.H.E(abstractC2285u);
        return O(abstractC2285u) && U(abstractC2285u.h(), abstractC2285u.i());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean i(N n10, N n11) {
        return U(w2.H.E(n10), w2.H.E(n11));
    }

    @Override
    public C2283s<N> k() {
        return this.f201c;
    }

    @Override
    public boolean m() {
        return this.f200b;
    }

    @Override
    public Set<AbstractC2285u<N>> n(N n10) {
        return new a(this, this, n10, R(n10));
    }

    @Override
    public Set<N> a(N n10) {
        return R(n10).b();
    }

    @Override
    public Set<N> b(N n10) {
        return R(n10).c();
    }

    public c0(AbstractC2272g<? super N> abstractC2272g, Map<N, B<N, V>> map, long j10) {
        M<N, B<N, V>> m10;
        this.f199a = abstractC2272g.f228a;
        this.f200b = abstractC2272g.f229b;
        this.f201c = (C2283s<N>) abstractC2272g.f230c.a();
        if (map instanceof TreeMap) {
            m10 = new N<>(map);
        } else {
            m10 = new M<>(map);
        }
        this.f202d = m10;
        this.f203e = D.c(j10);
    }
}
