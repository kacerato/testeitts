package A2;

import A2.C2283s;
import A2.K;
import v2.InterfaceC15800a;

@InterfaceC2284t
@InterfaceC15800a
public final class k0<N, V> extends AbstractC2272g<N> {
    public k0(boolean z10) {
        super(z10);
    }

    public static k0<Object, Object> e() {
        return new k0<>(true);
    }

    public static <N, V> k0<N, V> g(j0<N, V> j0Var) {
        return new k0(j0Var.c()).a(j0Var.m()).j(j0Var.k()).i(j0Var.q());
    }

    public static k0<Object, Object> k() {
        return new k0<>(false);
    }

    public k0<N, V> a(boolean z10) {
        this.f229b = z10;
        return this;
    }

    public <N1 extends N, V1 extends V> S<N1, V1> b() {
        return new a0(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <N1 extends N, V1 extends V> k0<N1, V1> c() {
        return this;
    }

    public k0<N, V> d() {
        k0<N, V> k0Var = new k0<>(this.f228a);
        k0Var.f229b = this.f229b;
        k0Var.f230c = this.f230c;
        k0Var.f232e = this.f232e;
        k0Var.f231d = this.f231d;
        return k0Var;
    }

    public k0<N, V> f(int i10) {
        this.f232e = w2.C.f(Integer.valueOf(D.b(i10)));
        return this;
    }

    public <N1 extends N, V1 extends V> K.a<N1, V1> h() {
        return new K.a<>(c());
    }

    public <N1 extends N> k0<N1, V> i(C2283s<N1> c2283s) {
        w2.H.u(c2283s.h() == C2283s.b.UNORDERED || c2283s.h() == C2283s.b.STABLE, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable().", c2283s);
        k0<N1, V> k0Var = (k0<N1, V>) c();
        k0Var.f231d = (C2283s) w2.H.E(c2283s);
        return k0Var;
    }

    public <N1 extends N> k0<N1, V> j(C2283s<N1> c2283s) {
        k0<N1, V> k0Var = (k0<N1, V>) c();
        k0Var.f230c = (C2283s) w2.H.E(c2283s);
        return k0Var;
    }
}
