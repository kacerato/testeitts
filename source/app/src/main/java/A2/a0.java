package A2;

import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

@InterfaceC2284t
public final class a0<N, V> extends c0<N, V> implements S<N, V> {

    public final C2283s<N> f189f;

    public a0(AbstractC2272g<? super N> abstractC2272g) {
        super(abstractC2272g);
        this.f189f = (C2283s<N>) abstractC2272g.f231d.a();
    }

    @I2.a
    public final B<N, V> V(N n10) {
        B<N, V> W10 = W();
        w2.H.g0(this.f202d.i(n10, W10) == null);
        return W10;
    }

    public final B<N, V> W() {
        return c() ? C2280o.w(this.f189f) : g0.k(this.f189f);
    }

    @Override
    @I2.a
    public boolean o(N n10) {
        w2.H.F(n10, "node");
        B<N, V> f10 = this.f202d.f(n10);
        if (f10 == null) {
            return false;
        }
        if (m() && f10.e(n10) != null) {
            f10.f(n10);
            this.f203e--;
        }
        Iterator<N> it = f10.b().iterator();
        while (it.hasNext()) {
            B<N, V> h10 = this.f202d.h(it.next());
            Objects.requireNonNull(h10);
            h10.f(n10);
            this.f203e--;
        }
        if (c()) {
            Iterator<N> it2 = f10.c().iterator();
            while (it2.hasNext()) {
                B<N, V> h11 = this.f202d.h(it2.next());
                Objects.requireNonNull(h11);
                w2.H.g0(h11.e(n10) != null);
                this.f203e--;
            }
        }
        this.f202d.j(n10);
        D.c(this.f203e);
        return true;
    }

    @Override
    @I2.a
    public boolean p(N n10) {
        w2.H.F(n10, "node");
        if (S(n10)) {
            return false;
        }
        V(n10);
        return true;
    }

    @Override
    public C2283s<N> q() {
        return this.f189f;
    }

    @Override
    @I2.a
    @CheckForNull
    public V r(N n10, N n11) {
        w2.H.F(n10, "nodeU");
        w2.H.F(n11, "nodeV");
        B<N, V> f10 = this.f202d.f(n10);
        B<N, V> f11 = this.f202d.f(n11);
        if (f10 == null || f11 == null) {
            return null;
        }
        V e10 = f10.e(n11);
        if (e10 != null) {
            f11.f(n10);
            long j10 = this.f203e - 1;
            this.f203e = j10;
            D.c(j10);
        }
        return e10;
    }

    @Override
    @I2.a
    @CheckForNull
    public V t(AbstractC2285u<N> abstractC2285u) {
        P(abstractC2285u);
        return r(abstractC2285u.h(), abstractC2285u.i());
    }

    @Override
    @I2.a
    @CheckForNull
    public V u(AbstractC2285u<N> abstractC2285u, V v10) {
        P(abstractC2285u);
        return y(abstractC2285u.h(), abstractC2285u.i(), v10);
    }

    @Override
    @I2.a
    @CheckForNull
    public V y(N n10, N n11, V v10) {
        w2.H.F(n10, "nodeU");
        w2.H.F(n11, "nodeV");
        w2.H.F(v10, "value");
        if (!m()) {
            w2.H.u(!n10.equals(n11), C.f150k, n10);
        }
        B<N, V> f10 = this.f202d.f(n10);
        if (f10 == null) {
            f10 = V(n10);
        }
        V h10 = f10.h(n11, v10);
        B<N, V> f11 = this.f202d.f(n11);
        if (f11 == null) {
            f11 = V(n11);
        }
        f11.d(n10, v10);
        if (h10 == null) {
            long j10 = this.f203e + 1;
            this.f203e = j10;
            D.e(j10);
        }
        return h10;
    }
}
