package A2;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.e3;
import java.util.Objects;

@InterfaceC2284t
public final class Z<N, E> extends b0<N, E> implements Q<N, E> {
    public Z(U<? super N, ? super E> u10) {
        super(u10);
    }

    @Override
    @I2.a
    public boolean F(AbstractC2285u<N> abstractC2285u, E e10) {
        Q(abstractC2285u);
        return M(abstractC2285u.h(), abstractC2285u.i(), e10);
    }

    @Override
    @I2.a
    public boolean L(E e10) {
        w2.H.F(e10, "edge");
        N f10 = this.f197g.f(e10);
        boolean z10 = false;
        if (f10 == null) {
            return false;
        }
        V<N, E> f11 = this.f196f.f(f10);
        Objects.requireNonNull(f11);
        V<N, E> v10 = f11;
        N d10 = v10.d(e10);
        V<N, E> f12 = this.f196f.f(d10);
        Objects.requireNonNull(f12);
        V<N, E> v11 = f12;
        v10.f(e10);
        if (m() && f10.equals(d10)) {
            z10 = true;
        }
        v11.h(e10, z10);
        this.f197g.j(e10);
        return true;
    }

    @Override
    @I2.a
    public boolean M(N n10, N n11, E e10) {
        w2.H.F(n10, "nodeU");
        w2.H.F(n11, "nodeV");
        w2.H.F(e10, "edge");
        if (T(e10)) {
            AbstractC2285u<N> H10 = H(e10);
            AbstractC2285u k10 = AbstractC2285u.k(this, n10, n11);
            w2.H.z(H10.equals(k10), C.f147h, e10, H10, k10);
            return false;
        }
        V<N, E> f10 = this.f196f.f(n10);
        if (!C()) {
            w2.H.y(f10 == null || !f10.b().contains(n11), C.f149j, n10, n11);
        }
        boolean equals = n10.equals(n11);
        if (!m()) {
            w2.H.u(!equals, C.f150k, n10);
        }
        if (f10 == null) {
            f10 = V(n10);
        }
        f10.i(e10, n11);
        V<N, E> f11 = this.f196f.f(n11);
        if (f11 == null) {
            f11 = V(n11);
        }
        f11.j(e10, n10, equals);
        this.f197g.i(e10, n10);
        return true;
    }

    @I2.a
    public final V<N, E> V(N n10) {
        V<N, E> W10 = W();
        w2.H.g0(this.f196f.i(n10, W10) == null);
        return W10;
    }

    public final V<N, E> W() {
        return c() ? C() ? C2281p.p() : C2282q.n() : C() ? h0.p() : i0.m();
    }

    @Override
    @I2.a
    public boolean o(N n10) {
        w2.H.F(n10, "node");
        V<N, E> f10 = this.f196f.f(n10);
        if (f10 == null) {
            return false;
        }
        e3<E> it = AbstractC12521g1.r(f10.k()).iterator();
        while (it.hasNext()) {
            L(it.next());
        }
        this.f196f.j(n10);
        return true;
    }

    @Override
    @I2.a
    public boolean p(N n10) {
        w2.H.F(n10, "node");
        if (U(n10)) {
            return false;
        }
        V(n10);
        return true;
    }
}
