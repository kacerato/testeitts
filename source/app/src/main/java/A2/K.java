package A2;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@InterfaceC2284t
@I2.j(containerOf = {"N", "V"})
@InterfaceC15800a
public final class K<N, V> extends c0<N, V> {

    public static class a<N, V> {

        public final S<N, V> f168a;

        public a(k0<N, V> k0Var) {
            this.f168a = k0Var.d().i(C2283s.g()).b();
        }

        @I2.a
        public a<N, V> a(N n10) {
            this.f168a.p(n10);
            return this;
        }

        public K<N, V> b() {
            return K.Z(this.f168a);
        }

        @I2.a
        public a<N, V> c(AbstractC2285u<N> abstractC2285u, V v10) {
            this.f168a.u(abstractC2285u, v10);
            return this;
        }

        @I2.a
        public a<N, V> d(N n10, N n11, V v10) {
            this.f168a.y(n10, n11, v10);
            return this;
        }
    }

    public K(j0<N, V> j0Var) {
        super(k0.g(j0Var), a0(j0Var), j0Var.g().size());
    }

    public static <N, V> B<N, V> X(final j0<N, V> j0Var, final N n10) {
        InterfaceC15902t interfaceC15902t = new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                Object b02;
                b02 = K.b0(j0.this, n10, obj);
                return b02;
            }
        };
        return j0Var.c() ? C2280o.x(n10, j0Var.n(n10), interfaceC15902t) : g0.l(Q1.j(j0Var.d(n10), interfaceC15902t));
    }

    @Deprecated
    public static <N, V> K<N, V> Y(K<N, V> k10) {
        return (K) w2.H.E(k10);
    }

    public static <N, V> K<N, V> Z(j0<N, V> j0Var) {
        return j0Var instanceof K ? (K) j0Var : new K<>(j0Var);
    }

    public static <N, V> AbstractC12529i1<N, B<N, V>> a0(j0<N, V> j0Var) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        for (N n10 : j0Var.e()) {
            i10.i(n10, X(j0Var, n10));
        }
        return i10.d();
    }

    public static Object b0(j0 j0Var, Object obj, Object obj2) {
        Object D10 = j0Var.D(obj, obj2, null);
        Objects.requireNonNull(D10);
        return D10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @CheckForNull
    public Object D(Object obj, Object obj2, @CheckForNull Object obj3) {
        return super.D(obj, obj2, obj3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @CheckForNull
    public Object J(AbstractC2285u abstractC2285u, @CheckForNull Object obj) {
        return super.J(abstractC2285u, obj);
    }

    @Override
    public E<N> s() {
        return new E<>(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set a(Object obj) {
        return super.a((K<N, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set b(Object obj) {
        return super.b((K<N, V>) obj);
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
    public boolean h(AbstractC2285u abstractC2285u) {
        return super.h(abstractC2285u);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean i(Object obj, Object obj2) {
        return super.i(obj, obj2);
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

    @Override
    public C2283s<N> q() {
        return C2283s.g();
    }
}
