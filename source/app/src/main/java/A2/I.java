package A2;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import java.util.Map;
import java.util.Set;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@InterfaceC2284t
@I2.j(containerOf = {"N", "E"})
@InterfaceC15800a
public final class I<N, E> extends b0<N, E> {

    public static class a<N, E> {

        public final Q<N, E> f165a;

        public a(U<N, E> u10) {
            this.f165a = (Q<N, E>) u10.c();
        }

        @I2.a
        public a<N, E> a(AbstractC2285u<N> abstractC2285u, E e10) {
            this.f165a.F(abstractC2285u, e10);
            return this;
        }

        @I2.a
        public a<N, E> b(N n10, N n11, E e10) {
            this.f165a.M(n10, n11, e10);
            return this;
        }

        @I2.a
        public a<N, E> c(N n10) {
            this.f165a.p(n10);
            return this;
        }

        public I<N, E> d() {
            return I.c0(this.f165a);
        }
    }

    public I(T<N, E> t10) {
        super(U.i(t10), e0(t10), d0(t10));
    }

    public static <N, E> InterfaceC15902t<E, N> Y(final T<N, E> t10, final N n10) {
        return new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                Object f02;
                f02 = I.f0(T.this, n10, obj);
                return f02;
            }
        };
    }

    public static <N, E> V<N, E> a0(T<N, E> t10, N n10) {
        if (!t10.c()) {
            Map j10 = Q1.j(t10.n(n10), Y(t10, n10));
            return t10.C() ? h0.q(j10) : i0.n(j10);
        }
        Map j11 = Q1.j(t10.x(n10), i0(t10));
        Map j12 = Q1.j(t10.z(n10), j0(t10));
        int size = t10.v(n10, n10).size();
        return t10.C() ? C2281p.q(j11, j12, size) : C2282q.o(j11, j12, size);
    }

    @Deprecated
    public static <N, E> I<N, E> b0(I<N, E> i10) {
        return (I) w2.H.E(i10);
    }

    public static <N, E> I<N, E> c0(T<N, E> t10) {
        return t10 instanceof I ? (I) t10 : new I<>(t10);
    }

    public static <N, E> Map<E, N> d0(T<N, E> t10) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        for (E e10 : t10.g()) {
            i10.i(e10, t10.H(e10).h());
        }
        return i10.d();
    }

    public static <N, E> Map<N, V<N, E>> e0(T<N, E> t10) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        for (N n10 : t10.e()) {
            i10.i(n10, a0(t10, n10));
        }
        return i10.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f0(T t10, Object obj, Object obj2) {
        return t10.H(obj2).c(obj);
    }

    public static Object g0(T t10, Object obj) {
        return t10.H(obj).m();
    }

    public static Object h0(T t10, Object obj) {
        return t10.H(obj).n();
    }

    public static <N, E> InterfaceC15902t<E, N> i0(final T<N, E> t10) {
        return new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                Object g02;
                g02 = I.g0(T.this, obj);
                return g02;
            }
        };
    }

    public static <N, E> InterfaceC15902t<E, N> j0(final T<N, E> t10) {
        return new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                Object h02;
                h02 = I.h0(T.this, obj);
                return h02;
            }
        };
    }

    @Override
    public boolean C() {
        return super.C();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public AbstractC2285u H(Object obj) {
        return super.H(obj);
    }

    @Override
    public E<N> s() {
        return new E<>(super.s());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set a(Object obj) {
        return super.a((I<N, E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set b(Object obj) {
        return super.b((I<N, E>) obj);
    }

    @Override
    public boolean c() {
        return super.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set d(Object obj) {
        return super.d(obj);
    }

    @Override
    public Set e() {
        return super.e();
    }

    @Override
    public Set g() {
        return super.g();
    }

    @Override
    public C2283s k() {
        return super.k();
    }

    @Override
    public boolean m() {
        return super.m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set n(Object obj) {
        return super.n(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set v(Object obj, Object obj2) {
        return super.v(obj, obj2);
    }

    @Override
    public C2283s w() {
        return super.w();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set x(Object obj) {
        return super.x(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set z(Object obj) {
        return super.z(obj);
    }
}
