package A2;

import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.D1;
import com.google.common.collect.E1;
import com.google.common.collect.Q1;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@InterfaceC2284t
@InterfaceC15800a
public final class D {

    public enum a {
        PENDING,
        COMPLETE
    }

    public static class b<N> extends AbstractC2287w<N> {

        public final InterfaceC2290z<N> f154a;

        public class a extends L<N> {

            public class C0002a implements InterfaceC15902t<AbstractC2285u<N>, AbstractC2285u<N>> {
                public C0002a() {
                }

                @Override
                public AbstractC2285u<N> apply(AbstractC2285u<N> abstractC2285u) {
                    return AbstractC2285u.j(b.this.Q(), abstractC2285u.i(), abstractC2285u.h());
                }
            }

            public a(InterfaceC2276k interfaceC2276k, Object obj) {
                super(interfaceC2276k, obj);
            }

            @Override
            public Iterator<AbstractC2285u<N>> iterator() {
                return E1.c0(b.this.Q().n(this.f169b).iterator(), new C0002a());
            }
        }

        public b(InterfaceC2290z<N> interfaceC2290z) {
            this.f154a = interfaceC2290z;
        }

        @Override
        public InterfaceC2290z<N> Q() {
            return this.f154a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable a(Object obj) {
            return a((b<N>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable b(Object obj) {
            return b((b<N>) obj);
        }

        @Override
        public int f(N n10) {
            return Q().l(n10);
        }

        @Override
        public boolean h(AbstractC2285u<N> abstractC2285u) {
            return Q().h(D.q(abstractC2285u));
        }

        @Override
        public boolean i(N n10, N n11) {
            return Q().i(n11, n10);
        }

        @Override
        public int l(N n10) {
            return Q().f(n10);
        }

        @Override
        public Set<AbstractC2285u<N>> n(N n10) {
            return new a(this, n10);
        }

        @Override
        public Set<N> a(N n10) {
            return Q().b((InterfaceC2290z<N>) n10);
        }

        @Override
        public Set<N> b(N n10) {
            return Q().a((InterfaceC2290z<N>) n10);
        }
    }

    public static class c<N, E> extends AbstractC2288x<N, E> {

        public final T<N, E> f157a;

        public c(T<N, E> t10) {
            this.f157a = t10;
        }

        @Override
        @CheckForNull
        public E A(AbstractC2285u<N> abstractC2285u) {
            return R().A(D.q(abstractC2285u));
        }

        @Override
        public Set<E> E(AbstractC2285u<N> abstractC2285u) {
            return R().E(D.q(abstractC2285u));
        }

        @Override
        @CheckForNull
        public E G(N n10, N n11) {
            return R().G(n11, n10);
        }

        @Override
        public AbstractC2285u<N> H(E e10) {
            AbstractC2285u<N> H10 = R().H(e10);
            return AbstractC2285u.k(this.f157a, H10.i(), H10.h());
        }

        @Override
        public T<N, E> R() {
            return this.f157a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable a(Object obj) {
            return a((c<N, E>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable b(Object obj) {
            return b((c<N, E>) obj);
        }

        @Override
        public int f(N n10) {
            return R().l(n10);
        }

        @Override
        public boolean h(AbstractC2285u<N> abstractC2285u) {
            return R().h(D.q(abstractC2285u));
        }

        @Override
        public boolean i(N n10, N n11) {
            return R().i(n11, n10);
        }

        @Override
        public int l(N n10) {
            return R().f(n10);
        }

        @Override
        public Set<E> v(N n10, N n11) {
            return R().v(n11, n10);
        }

        @Override
        public Set<E> x(N n10) {
            return R().z(n10);
        }

        @Override
        public Set<E> z(N n10) {
            return R().x(n10);
        }

        @Override
        public Set<N> a(N n10) {
            return R().b((T<N, E>) n10);
        }

        @Override
        public Set<N> b(N n10) {
            return R().a((T<N, E>) n10);
        }
    }

    public static class d<N, V> extends AbstractC2289y<N, V> {

        public final j0<N, V> f158a;

        public d(j0<N, V> j0Var) {
            this.f158a = j0Var;
        }

        @Override
        @CheckForNull
        public V D(N n10, N n11, @CheckForNull V v10) {
            return R().D(n11, n10, v10);
        }

        @Override
        @CheckForNull
        public V J(AbstractC2285u<N> abstractC2285u, @CheckForNull V v10) {
            return R().J(D.q(abstractC2285u), v10);
        }

        @Override
        public j0<N, V> R() {
            return this.f158a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable a(Object obj) {
            return a((d<N, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public Iterable b(Object obj) {
            return b((d<N, V>) obj);
        }

        @Override
        public int f(N n10) {
            return R().l(n10);
        }

        @Override
        public boolean h(AbstractC2285u<N> abstractC2285u) {
            return R().h(D.q(abstractC2285u));
        }

        @Override
        public boolean i(N n10, N n11) {
            return R().i(n11, n10);
        }

        @Override
        public int l(N n10) {
            return R().f(n10);
        }

        @Override
        public Set<N> a(N n10) {
            return R().b((j0<N, V>) n10);
        }

        @Override
        public Set<N> b(N n10) {
            return R().a((j0<N, V>) n10);
        }
    }

    public static boolean a(InterfaceC2290z<?> interfaceC2290z, Object obj, @CheckForNull Object obj2) {
        return interfaceC2290z.c() || !w2.B.a(obj2, obj);
    }

    @I2.a
    public static int b(int i10) {
        w2.H.k(i10 >= 0, "Not true that %s is non-negative.", i10);
        return i10;
    }

    @I2.a
    public static long c(long j10) {
        w2.H.p(j10 >= 0, "Not true that %s is non-negative.", j10);
        return j10;
    }

    @I2.a
    public static int d(int i10) {
        w2.H.k(i10 > 0, "Not true that %s is positive.", i10);
        return i10;
    }

    @I2.a
    public static long e(long j10) {
        w2.H.p(j10 > 0, "Not true that %s is positive.", j10);
        return j10;
    }

    public static <N> P<N> f(InterfaceC2290z<N> interfaceC2290z) {
        P<N> p10 = (P<N>) A.g(interfaceC2290z).f(interfaceC2290z.e().size()).b();
        Iterator<N> it = interfaceC2290z.e().iterator();
        while (it.hasNext()) {
            p10.p(it.next());
        }
        for (AbstractC2285u<N> abstractC2285u : interfaceC2290z.g()) {
            p10.K(abstractC2285u.h(), abstractC2285u.i());
        }
        return p10;
    }

    public static <N, E> Q<N, E> g(T<N, E> t10) {
        Q<N, E> q10 = (Q<N, E>) U.i(t10).h(t10.e().size()).g(t10.g().size()).c();
        Iterator<N> it = t10.e().iterator();
        while (it.hasNext()) {
            q10.p(it.next());
        }
        for (E e10 : t10.g()) {
            AbstractC2285u<N> H10 = t10.H(e10);
            q10.M(H10.h(), H10.i(), e10);
        }
        return q10;
    }

    public static <N, V> S<N, V> h(j0<N, V> j0Var) {
        S<N, V> s10 = (S<N, V>) k0.g(j0Var).f(j0Var.e().size()).b();
        Iterator<N> it = j0Var.e().iterator();
        while (it.hasNext()) {
            s10.p(it.next());
        }
        for (AbstractC2285u<N> abstractC2285u : j0Var.g()) {
            N h10 = abstractC2285u.h();
            N i10 = abstractC2285u.i();
            V D10 = j0Var.D(abstractC2285u.h(), abstractC2285u.i(), null);
            Objects.requireNonNull(D10);
            s10.y(h10, i10, D10);
        }
        return s10;
    }

    public static <N> boolean i(InterfaceC2290z<N> interfaceC2290z) {
        int size = interfaceC2290z.g().size();
        if (size == 0) {
            return false;
        }
        if (!interfaceC2290z.c() && size >= interfaceC2290z.e().size()) {
            return true;
        }
        HashMap a02 = Q1.a0(interfaceC2290z.e().size());
        Iterator<N> it = interfaceC2290z.e().iterator();
        while (it.hasNext()) {
            if (o(interfaceC2290z, a02, it.next(), null)) {
                return true;
            }
        }
        return false;
    }

    public static boolean j(T<?, ?> t10) {
        if (t10.c() || !t10.C() || t10.g().size() <= t10.s().g().size()) {
            return i(t10.s());
        }
        return true;
    }

    public static <N> P<N> k(InterfaceC2290z<N> interfaceC2290z, Iterable<? extends N> iterable) {
        Y y10 = iterable instanceof Collection ? (P<N>) A.g(interfaceC2290z).f(((Collection) iterable).size()).b() : (P<N>) A.g(interfaceC2290z).b();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            y10.p(it.next());
        }
        for (N n10 : y10.e()) {
            for (N n11 : interfaceC2290z.a((InterfaceC2290z<N>) n10)) {
                if (y10.e().contains(n11)) {
                    y10.K(n10, n11);
                }
            }
        }
        return y10;
    }

    public static <N, E> Q<N, E> l(T<N, E> t10, Iterable<? extends N> iterable) {
        Z z10 = iterable instanceof Collection ? (Q<N, E>) U.i(t10).h(((Collection) iterable).size()).c() : (Q<N, E>) U.i(t10).c();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            z10.p(it.next());
        }
        for (E e10 : z10.e()) {
            for (E e11 : t10.z(e10)) {
                N c10 = t10.H(e11).c(e10);
                if (z10.e().contains(c10)) {
                    z10.M(e10, c10, e11);
                }
            }
        }
        return z10;
    }

    public static <N, V> S<N, V> m(j0<N, V> j0Var, Iterable<? extends N> iterable) {
        a0 a0Var = iterable instanceof Collection ? (S<N, V>) k0.g(j0Var).f(((Collection) iterable).size()).b() : (S<N, V>) k0.g(j0Var).b();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            a0Var.p(it.next());
        }
        for (N n10 : a0Var.e()) {
            for (N n11 : j0Var.a((j0<N, V>) n10)) {
                if (a0Var.e().contains(n11)) {
                    V D10 = j0Var.D(n10, n11, null);
                    Objects.requireNonNull(D10);
                    a0Var.y(n10, n11, D10);
                }
            }
        }
        return a0Var;
    }

    public static <N> Set<N> n(InterfaceC2290z<N> interfaceC2290z, N n10) {
        w2.H.u(interfaceC2290z.e().contains(n10), C.f145f, n10);
        return AbstractC12564r1.r(e0.g(interfaceC2290z).b(n10));
    }

    public static <N> boolean o(InterfaceC2290z<N> interfaceC2290z, Map<Object, a> map, N n10, @CheckForNull N n11) {
        a aVar = map.get(n10);
        if (aVar == a.COMPLETE) {
            return false;
        }
        a aVar2 = a.PENDING;
        if (aVar == aVar2) {
            return true;
        }
        map.put(n10, aVar2);
        for (N n12 : interfaceC2290z.a((InterfaceC2290z<N>) n10)) {
            if (a(interfaceC2290z, n12, n11) && o(interfaceC2290z, map, n12, n10)) {
                return true;
            }
        }
        map.put(n10, a.COMPLETE);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N> InterfaceC2290z<N> p(InterfaceC2290z<N> interfaceC2290z) {
        Y b10 = A.g(interfaceC2290z).a(true).b();
        if (interfaceC2290z.c()) {
            for (N n10 : interfaceC2290z.e()) {
                Iterator it = n(interfaceC2290z, n10).iterator();
                while (it.hasNext()) {
                    b10.K(n10, it.next());
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n11 : interfaceC2290z.e()) {
                if (!hashSet.contains(n11)) {
                    Set n12 = n(interfaceC2290z, n11);
                    hashSet.addAll(n12);
                    int i10 = 1;
                    for (Object obj : n12) {
                        int i11 = i10 + 1;
                        Iterator it2 = D1.D(n12, i10).iterator();
                        while (it2.hasNext()) {
                            b10.K(obj, it2.next());
                        }
                        i10 = i11;
                    }
                }
            }
        }
        return b10;
    }

    public static <N> AbstractC2285u<N> q(AbstractC2285u<N> abstractC2285u) {
        return abstractC2285u.d() ? AbstractC2285u.l(abstractC2285u.n(), abstractC2285u.m()) : abstractC2285u;
    }

    public static <N> InterfaceC2290z<N> r(InterfaceC2290z<N> interfaceC2290z) {
        return !interfaceC2290z.c() ? interfaceC2290z : interfaceC2290z instanceof b ? ((b) interfaceC2290z).f154a : new b(interfaceC2290z);
    }

    public static <N, E> T<N, E> s(T<N, E> t10) {
        return !t10.c() ? t10 : t10 instanceof c ? ((c) t10).f157a : new c(t10);
    }

    public static <N, V> j0<N, V> t(j0<N, V> j0Var) {
        return !j0Var.c() ? j0Var : j0Var instanceof d ? ((d) j0Var).f158a : new d(j0Var);
    }
}
