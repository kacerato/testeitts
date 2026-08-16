package A2;

import A2.C;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import java.util.Set;
import v2.InterfaceC15800a;
import w2.C15904v;
import w2.InterfaceC15902t;

@InterfaceC2284t
@I2.j(containerOf = {"N"})
@InterfaceC15800a
public class E<N> extends AbstractC2287w<N> {

    public final InterfaceC2276k<N> f159a;

    public static class a<N> {

        public final P<N> f160a;

        public a(A<N> a10) {
            this.f160a = a10.d().i(C2283s.g()).b();
        }

        @I2.a
        public a<N> a(N n10) {
            this.f160a.p(n10);
            return this;
        }

        public E<N> b() {
            return E.S(this.f160a);
        }

        @I2.a
        public a<N> c(AbstractC2285u<N> abstractC2285u) {
            this.f160a.I(abstractC2285u);
            return this;
        }

        @I2.a
        public a<N> d(N n10, N n11) {
            this.f160a.K(n10, n11);
            return this;
        }
    }

    public E(InterfaceC2276k<N> interfaceC2276k) {
        this.f159a = interfaceC2276k;
    }

    public static <N> B<N, C.a> R(InterfaceC2290z<N> interfaceC2290z, N n10) {
        InterfaceC15902t b10 = C15904v.b(C.a.EDGE_EXISTS);
        return interfaceC2290z.c() ? C2280o.x(n10, interfaceC2290z.n(n10), b10) : g0.l(Q1.j(interfaceC2290z.d(n10), b10));
    }

    public static <N> E<N> S(InterfaceC2290z<N> interfaceC2290z) {
        return interfaceC2290z instanceof E ? (E) interfaceC2290z : new E<>(new c0(A.g(interfaceC2290z), U(interfaceC2290z), interfaceC2290z.g().size()));
    }

    @Deprecated
    public static <N> E<N> T(E<N> e10) {
        return (E) w2.H.E(e10);
    }

    public static <N> AbstractC12529i1<N, B<N, C.a>> U(InterfaceC2290z<N> interfaceC2290z) {
        AbstractC12529i1.b i10 = AbstractC12529i1.i();
        for (N n10 : interfaceC2290z.e()) {
            i10.i(n10, R(interfaceC2290z, n10));
        }
        return i10.d();
    }

    @Override
    public InterfaceC2276k<N> Q() {
        return this.f159a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set a(Object obj) {
        return super.a((E<N>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set b(Object obj) {
        return super.b((E<N>) obj);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int f(Object obj) {
        return super.f(obj);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int j(Object obj) {
        return super.j(obj);
    }

    @Override
    public C2283s k() {
        return super.k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public int l(Object obj) {
        return super.l(obj);
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
