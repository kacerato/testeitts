package A2;

import A2.I;
import v2.InterfaceC15800a;

@InterfaceC2284t
@InterfaceC15800a
public final class U<N, E> extends AbstractC2272g<N> {

    public boolean f184f;

    public C2283s<? super E> f185g;

    public w2.C<Integer> f186h;

    public U(boolean z10) {
        super(z10);
        this.f184f = false;
        this.f185g = C2283s.d();
        this.f186h = w2.C.a();
    }

    public static U<Object, Object> e() {
        return new U<>(true);
    }

    public static <N, E> U<N, E> i(T<N, E> t10) {
        return new U(t10.c()).a(t10.C()).b(t10.m()).k(t10.k()).f(t10.w());
    }

    public static U<Object, Object> l() {
        return new U<>(false);
    }

    public U<N, E> a(boolean z10) {
        this.f184f = z10;
        return this;
    }

    public U<N, E> b(boolean z10) {
        this.f229b = z10;
        return this;
    }

    public <N1 extends N, E1 extends E> Q<N1, E1> c() {
        return new Z(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <N1 extends N, E1 extends E> U<N1, E1> d() {
        return this;
    }

    public <E1 extends E> U<N, E1> f(C2283s<E1> c2283s) {
        U<N, E1> u10 = (U<N, E1>) d();
        u10.f185g = (C2283s) w2.H.E(c2283s);
        return u10;
    }

    public U<N, E> g(int i10) {
        this.f186h = w2.C.f(Integer.valueOf(D.b(i10)));
        return this;
    }

    public U<N, E> h(int i10) {
        this.f232e = w2.C.f(Integer.valueOf(D.b(i10)));
        return this;
    }

    public <N1 extends N, E1 extends E> I.a<N1, E1> j() {
        return new I.a<>(d());
    }

    public <N1 extends N> U<N1, E> k(C2283s<N1> c2283s) {
        U<N1, E> u10 = (U<N1, E>) d();
        u10.f230c = (C2283s) w2.H.E(c2283s);
        return u10;
    }
}
