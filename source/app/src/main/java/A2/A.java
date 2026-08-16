package A2;

import A2.C2283s;
import A2.E;
import v2.InterfaceC15800a;

@InterfaceC2284t
@I2.f
@InterfaceC15800a
public final class A<N> extends AbstractC2272g<N> {
    public A(boolean z10) {
        super(z10);
    }

    public static A<Object> e() {
        return new A<>(true);
    }

    public static <N> A<N> g(InterfaceC2290z<N> interfaceC2290z) {
        return new A(interfaceC2290z.c()).a(interfaceC2290z.m()).j(interfaceC2290z.k()).i(interfaceC2290z.q());
    }

    public static A<Object> k() {
        return new A<>(false);
    }

    public A<N> a(boolean z10) {
        this.f229b = z10;
        return this;
    }

    public <N1 extends N> P<N1> b() {
        return new Y(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <N1 extends N> A<N1> c() {
        return this;
    }

    public A<N> d() {
        A<N> a10 = new A<>(this.f228a);
        a10.f229b = this.f229b;
        a10.f230c = this.f230c;
        a10.f232e = this.f232e;
        a10.f231d = this.f231d;
        return a10;
    }

    public A<N> f(int i10) {
        this.f232e = w2.C.f(Integer.valueOf(D.b(i10)));
        return this;
    }

    public <N1 extends N> E.a<N1> h() {
        return new E.a<>(c());
    }

    public <N1 extends N> A<N1> i(C2283s<N1> c2283s) {
        w2.H.u(c2283s.h() == C2283s.b.UNORDERED || c2283s.h() == C2283s.b.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", c2283s);
        A<N1> c10 = c();
        c10.f231d = (C2283s) w2.H.E(c2283s);
        return c10;
    }

    public <N1 extends N> A<N1> j(C2283s<N1> c2283s) {
        A<N1> c10 = c();
        c10.f230c = (C2283s) w2.H.E(c2283s);
        return c10;
    }
}
