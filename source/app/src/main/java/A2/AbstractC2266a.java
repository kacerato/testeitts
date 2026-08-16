package A2;

import A2.AbstractC2266a;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import com.google.common.collect.E1;
import com.google.common.collect.e3;
import java.util.AbstractSet;
import java.util.Set;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@InterfaceC2284t
public abstract class AbstractC2266a<N> implements InterfaceC2276k<N> {

    public class C0004a extends AbstractSet<AbstractC2285u<N>> {
        public C0004a() {
        }

        @Override
        public e3<AbstractC2285u<N>> iterator() {
            return AbstractC2286v.f(AbstractC2266a.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof AbstractC2285u)) {
                return false;
            }
            AbstractC2285u<?> abstractC2285u = (AbstractC2285u) obj;
            return AbstractC2266a.this.O(abstractC2285u) && AbstractC2266a.this.e().contains(abstractC2285u.h()) && AbstractC2266a.this.a((AbstractC2266a) abstractC2285u.h()).contains(abstractC2285u.i());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return com.google.common.primitives.l.x(AbstractC2266a.this.N());
        }
    }

    public class b extends L<N> {
        public b(AbstractC2266a abstractC2266a, InterfaceC2276k interfaceC2276k, Object obj) {
            super(interfaceC2276k, obj);
        }

        @Override
        public e3<AbstractC2285u<N>> iterator() {
            return this.f170c.c() ? E1.f0(E1.j(E1.c0(this.f170c.b((InterfaceC2276k<N>) this.f169b).iterator(), new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC2285u e10;
                    e10 = AbstractC2266a.b.this.e(obj);
                    return e10;
                }
            }), E1.c0(D2.f(this.f170c.a((InterfaceC2276k<N>) this.f169b), AbstractC12564r1.A(this.f169b)).iterator(), new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC2285u f10;
                    f10 = AbstractC2266a.b.this.f(obj);
                    return f10;
                }
            }))) : E1.f0(E1.c0(this.f170c.d(this.f169b).iterator(), new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    AbstractC2285u g10;
                    g10 = AbstractC2266a.b.this.g(obj);
                    return g10;
                }
            }));
        }

        public final AbstractC2285u e(Object obj) {
            return AbstractC2285u.l(obj, this.f169b);
        }

        public final AbstractC2285u f(Object obj) {
            return AbstractC2285u.l(this.f169b, obj);
        }

        public final AbstractC2285u g(Object obj) {
            return AbstractC2285u.o(this.f169b, obj);
        }
    }

    public long N() {
        long j10 = 0;
        while (e().iterator().hasNext()) {
            j10 += j(r0.next());
        }
        w2.H.g0((1 & j10) == 0);
        return j10 >>> 1;
    }

    public final boolean O(AbstractC2285u<?> abstractC2285u) {
        return abstractC2285u.d() || !c();
    }

    public final void P(AbstractC2285u<?> abstractC2285u) {
        w2.H.E(abstractC2285u);
        w2.H.e(O(abstractC2285u), C.f153n);
    }

    @Override
    public int f(N n10) {
        return c() ? b((AbstractC2266a<N>) n10).size() : j(n10);
    }

    @Override
    public Set<AbstractC2285u<N>> g() {
        return new C0004a();
    }

    @Override
    public boolean h(AbstractC2285u<N> abstractC2285u) {
        w2.H.E(abstractC2285u);
        if (!O(abstractC2285u)) {
            return false;
        }
        N h10 = abstractC2285u.h();
        return e().contains(h10) && a((AbstractC2266a<N>) h10).contains(abstractC2285u.i());
    }

    @Override
    public boolean i(N n10, N n11) {
        w2.H.E(n10);
        w2.H.E(n11);
        return e().contains(n10) && a((AbstractC2266a<N>) n10).contains(n11);
    }

    @Override
    public int j(N n10) {
        if (c()) {
            return E2.f.t(b((AbstractC2266a<N>) n10).size(), a((AbstractC2266a<N>) n10).size());
        }
        Set<N> d10 = d(n10);
        return E2.f.t(d10.size(), (m() && d10.contains(n10)) ? 1 : 0);
    }

    @Override
    public int l(N n10) {
        return c() ? a((AbstractC2266a<N>) n10).size() : j(n10);
    }

    @Override
    public Set<AbstractC2285u<N>> n(N n10) {
        w2.H.E(n10);
        w2.H.u(e().contains(n10), C.f145f, n10);
        return new b(this, this, n10);
    }

    @Override
    public C2283s<N> q() {
        return C2283s.i();
    }
}
