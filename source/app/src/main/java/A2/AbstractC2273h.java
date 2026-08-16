package A2;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D2;
import com.google.common.collect.E1;
import com.google.common.collect.Q1;
import java.util.AbstractSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@InterfaceC2284t
@InterfaceC15800a
public abstract class AbstractC2273h<N, E> implements T<N, E> {

    public class a extends AbstractC2271f<N> {

        public class C0005a extends AbstractSet<AbstractC2285u<N>> {

            public class C0006a implements InterfaceC15902t<E, AbstractC2285u<N>> {
                public C0006a() {
                }

                @Override
                public AbstractC2285u<N> apply(E e10) {
                    return AbstractC2273h.this.H(e10);
                }
            }

            public C0005a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean contains(@CheckForNull Object obj) {
                if (!(obj instanceof AbstractC2285u)) {
                    return false;
                }
                AbstractC2285u<?> abstractC2285u = (AbstractC2285u) obj;
                return a.this.O(abstractC2285u) && a.this.e().contains(abstractC2285u.h()) && a.this.a((a) abstractC2285u.h()).contains(abstractC2285u.i());
            }

            @Override
            public Iterator<AbstractC2285u<N>> iterator() {
                return E1.c0(AbstractC2273h.this.g().iterator(), new C0006a());
            }

            @Override
            public int size() {
                return AbstractC2273h.this.g().size();
            }
        }

        public a() {
        }

        @Override
        public Iterable a(Object obj) {
            return a((a) obj);
        }

        @Override
        public Iterable b(Object obj) {
            return b((a) obj);
        }

        @Override
        public boolean c() {
            return AbstractC2273h.this.c();
        }

        @Override
        public Set<N> d(N n10) {
            return AbstractC2273h.this.d(n10);
        }

        @Override
        public Set<N> e() {
            return AbstractC2273h.this.e();
        }

        @Override
        public Set<AbstractC2285u<N>> g() {
            return AbstractC2273h.this.C() ? super.g() : new C0005a();
        }

        @Override
        public C2283s<N> k() {
            return AbstractC2273h.this.k();
        }

        @Override
        public boolean m() {
            return AbstractC2273h.this.m();
        }

        @Override
        public C2283s<N> q() {
            return C2283s.i();
        }

        @Override
        public Set<N> a(N n10) {
            return AbstractC2273h.this.a((AbstractC2273h) n10);
        }

        @Override
        public Set<N> b(N n10) {
            return AbstractC2273h.this.b((AbstractC2273h) n10);
        }
    }

    public class b implements w2.I<E> {

        public final Object f238b;

        public final Object f239c;

        public b(Object obj, Object obj2) {
            this.f238b = obj;
            this.f239c = obj2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean apply(E e10) {
            return AbstractC2273h.this.H(e10).c(this.f238b).equals(this.f239c);
        }
    }

    public class c implements InterfaceC15902t<E, AbstractC2285u<N>> {

        public final T f241b;

        public c(T t10) {
            this.f241b = t10;
        }

        @Override
        public AbstractC2285u<N> apply(E e10) {
            return this.f241b.H(e10);
        }
    }

    public static <N, E> Map<E, AbstractC2285u<N>> O(T<N, E> t10) {
        return Q1.j(t10.g(), new c(t10));
    }

    @Override
    @CheckForNull
    public E A(AbstractC2285u<N> abstractC2285u) {
        Q(abstractC2285u);
        return G(abstractC2285u.h(), abstractC2285u.i());
    }

    @Override
    public Set<E> B(E e10) {
        AbstractC2285u<N> H10 = H(e10);
        return D2.f(D2.N(n(H10.h()), n(H10.i())), AbstractC12564r1.A(e10));
    }

    @Override
    public Set<E> E(AbstractC2285u<N> abstractC2285u) {
        Q(abstractC2285u);
        return v(abstractC2285u.h(), abstractC2285u.i());
    }

    @Override
    @CheckForNull
    public E G(N n10, N n11) {
        Set<E> v10 = v(n10, n11);
        int size = v10.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return v10.iterator().next();
        }
        throw new IllegalArgumentException(String.format(C.f148i, n10, n11));
    }

    public final w2.I<E> N(N n10, N n11) {
        return new b(n10, n11);
    }

    public final boolean P(AbstractC2285u<?> abstractC2285u) {
        return abstractC2285u.d() || !c();
    }

    public final void Q(AbstractC2285u<?> abstractC2285u) {
        w2.H.E(abstractC2285u);
        w2.H.e(P(abstractC2285u), C.f153n);
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof T)) {
            return false;
        }
        T t10 = (T) obj;
        return c() == t10.c() && e().equals(t10.e()) && O(this).equals(O(t10));
    }

    @Override
    public int f(N n10) {
        return c() ? x(n10).size() : j(n10);
    }

    @Override
    public boolean h(AbstractC2285u<N> abstractC2285u) {
        w2.H.E(abstractC2285u);
        if (P(abstractC2285u)) {
            return i(abstractC2285u.h(), abstractC2285u.i());
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return O(this).hashCode();
    }

    @Override
    public boolean i(N n10, N n11) {
        w2.H.E(n10);
        w2.H.E(n11);
        return e().contains(n10) && a((AbstractC2273h<N, E>) n10).contains(n11);
    }

    @Override
    public int j(N n10) {
        return c() ? E2.f.t(x(n10).size(), z(n10).size()) : E2.f.t(n(n10).size(), v(n10, n10).size());
    }

    @Override
    public int l(N n10) {
        return c() ? z(n10).size() : j(n10);
    }

    @Override
    public InterfaceC2290z<N> s() {
        return new a();
    }

    public String toString() {
        boolean c10 = c();
        boolean C10 = C();
        boolean m10 = m();
        String valueOf = String.valueOf(e());
        String valueOf2 = String.valueOf(O(this));
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 87 + valueOf2.length());
        sb2.append("isDirected: ");
        sb2.append(c10);
        sb2.append(", allowsParallelEdges: ");
        sb2.append(C10);
        sb2.append(", allowsSelfLoops: ");
        sb2.append(m10);
        sb2.append(", nodes: ");
        sb2.append(valueOf);
        sb2.append(", edges: ");
        sb2.append(valueOf2);
        return sb2.toString();
    }

    @Override
    public Set<E> v(N n10, N n11) {
        Set<E> z10 = z(n10);
        Set<E> x10 = x(n11);
        return z10.size() <= x10.size() ? Collections.unmodifiableSet(D2.i(z10, N(n10, n11))) : Collections.unmodifiableSet(D2.i(x10, N(n11, n10)));
    }
}
