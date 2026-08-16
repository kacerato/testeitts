package A2;

import com.google.common.collect.AbstractC12564r1;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

@InterfaceC2284t
public class b0<N, E> extends AbstractC2273h<N, E> {

    public final boolean f191a;

    public final boolean f192b;

    public final boolean f193c;

    public final C2283s<N> f194d;

    public final C2283s<E> f195e;

    public final M<N, V<N, E>> f196f;

    public final M<E, N> f197g;

    public b0(U<? super N, ? super E> u10) {
        this(u10, u10.f230c.c(u10.f232e.g(10).intValue()), u10.f185g.c(u10.f186h.g(20).intValue()));
    }

    @Override
    public boolean C() {
        return this.f192b;
    }

    @Override
    public AbstractC2285u<N> H(E e10) {
        N S10 = S(e10);
        V<N, E> f10 = this.f196f.f(S10);
        Objects.requireNonNull(f10);
        return AbstractC2285u.k(this, S10, f10.d(e10));
    }

    public final V<N, E> R(N n10) {
        V<N, E> f10 = this.f196f.f(n10);
        if (f10 != null) {
            return f10;
        }
        w2.H.E(n10);
        throw new IllegalArgumentException(String.format(C.f145f, n10));
    }

    public final N S(E e10) {
        N f10 = this.f197g.f(e10);
        if (f10 != null) {
            return f10;
        }
        w2.H.E(e10);
        throw new IllegalArgumentException(String.format(C.f146g, e10));
    }

    public final boolean T(E e10) {
        return this.f197g.e(e10);
    }

    public final boolean U(N n10) {
        return this.f196f.e(n10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable a(Object obj) {
        return a((b0<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Iterable b(Object obj) {
        return b((b0<N, E>) obj);
    }

    @Override
    public boolean c() {
        return this.f191a;
    }

    @Override
    public Set<N> d(N n10) {
        return R(n10).a();
    }

    @Override
    public Set<N> e() {
        return this.f196f.k();
    }

    @Override
    public Set<E> g() {
        return this.f197g.k();
    }

    @Override
    public C2283s<N> k() {
        return this.f194d;
    }

    @Override
    public boolean m() {
        return this.f193c;
    }

    @Override
    public Set<E> n(N n10) {
        return R(n10).k();
    }

    @Override
    public Set<E> v(N n10, N n11) {
        V<N, E> R10 = R(n10);
        if (!this.f193c && n10 == n11) {
            return AbstractC12564r1.z();
        }
        w2.H.u(U(n11), C.f145f, n11);
        return R10.l(n11);
    }

    @Override
    public C2283s<E> w() {
        return this.f195e;
    }

    @Override
    public Set<E> x(N n10) {
        return R(n10).e();
    }

    @Override
    public Set<E> z(N n10) {
        return R(n10).g();
    }

    @Override
    public Set<N> a(N n10) {
        return R(n10).b();
    }

    @Override
    public Set<N> b(N n10) {
        return R(n10).c();
    }

    public b0(U<? super N, ? super E> u10, Map<N, V<N, E>> map, Map<E, N> map2) {
        M<N, V<N, E>> m10;
        this.f191a = u10.f228a;
        this.f192b = u10.f184f;
        this.f193c = u10.f229b;
        this.f194d = (C2283s<N>) u10.f230c.a();
        this.f195e = (C2283s<E>) u10.f185g.a();
        if (map instanceof TreeMap) {
            m10 = new N<>(map);
        } else {
            m10 = new M<>(map);
        }
        this.f196f = m10;
        this.f197g = new M<>(map2);
    }
}
